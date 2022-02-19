// Copyright 2022 Ewout Prangsma
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
// Author Ewout Prangsma
//

package loki

import (
	"fmt"
	"log"
	"strings"
	"sync"
	"time"

	"github.com/afiskon/promtail-client/logproto"
	"github.com/gogo/protobuf/proto"
	"github.com/golang/protobuf/ptypes/timestamp"
	"github.com/golang/snappy"
	"github.com/rs/zerolog"
)

// LokiLogger send log messages towards Loki.
type LokiLogger struct {
	config    *clientConfig
	quit      chan struct{}
	entries   chan protoLogEntry
	waitGroup sync.WaitGroup
	client    httpClient
}

type protoLogEntry struct {
	entry *logproto.Entry
	level zerolog.Level
}

func NewLokiLogger(rootUrl, job string) (*LokiLogger, error) {
	conf := &clientConfig{
		PushURL:            strings.TrimSuffix(rootUrl, "/") + "/api/prom/push",
		BatchWait:          time.Second * 2,
		BatchEntriesNumber: 1024,
		Labels:             fmt.Sprintf(`{job="%s"}`, job),
	}
	client := &LokiLogger{
		config:  conf,
		quit:    make(chan struct{}),
		entries: make(chan protoLogEntry, LOG_ENTRIES_CHAN_SIZE),
		client:  httpClient{},
	}

	client.waitGroup.Add(1)
	go client.run()

	return client, nil
}

var _ zerolog.LevelWriter = &LokiLogger{}

// Write a std message
func (l *LokiLogger) Write(p []byte) (int, error) {
	return l.WriteLevel(zerolog.InfoLevel, p)
}

// Write a message with given level
func (l *LokiLogger) WriteLevel(level zerolog.Level, p []byte) (n int, err error) {
	now := time.Now().UnixNano()
	l.entries <- protoLogEntry{
		entry: &logproto.Entry{
			Timestamp: &timestamp.Timestamp{
				Seconds: now / int64(time.Second),
				Nanos:   int32(now % int64(time.Second)),
			},
			Line: string(p),
		},
		level: level,
	}
	return len(p), nil
}

func (c *LokiLogger) Shutdown() {
	close(c.quit)
	c.waitGroup.Wait()
}

func (c *LokiLogger) run() {
	var batch []*logproto.Entry
	batchSize := 0
	maxWait := time.NewTimer(c.config.BatchWait)

	defer func() {
		if batchSize > 0 {
			c.send(batch)
		}

		c.waitGroup.Done()
	}()

	for {
		select {
		case <-c.quit:
			return
		case entry := <-c.entries:
			batch = append(batch, entry.entry)
			batchSize++
			if batchSize >= c.config.BatchEntriesNumber {
				c.send(batch)
				batch = []*logproto.Entry{}
				batchSize = 0
				maxWait.Reset(c.config.BatchWait)
			}
		case <-maxWait.C:
			if batchSize > 0 {
				c.send(batch)
				batch = []*logproto.Entry{}
				batchSize = 0
			}
			maxWait.Reset(c.config.BatchWait)
		}
	}
}

func (c *LokiLogger) send(entries []*logproto.Entry) {
	var streams []*logproto.Stream
	streams = append(streams, &logproto.Stream{
		Labels:  c.config.Labels,
		Entries: entries,
	})

	req := logproto.PushRequest{
		Streams: streams,
	}

	buf, err := proto.Marshal(&req)
	if err != nil {
		log.Printf("promtail.ClientProto: unable to marshal: %s\n", err)
		return
	}

	buf = snappy.Encode(nil, buf)

	resp, body, err := c.client.sendJsonReq("POST", c.config.PushURL, "application/x-protobuf", buf)
	if err != nil {
		log.Printf("promtail.ClientProto: unable to send an HTTP request: %s\n", err)
		return
	}

	if resp.StatusCode != 204 {
		log.Printf("promtail.ClientProto: Unexpected HTTP status code: %d, message: %s\n", resp.StatusCode, body)
		return
	}
}
