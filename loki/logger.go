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
	"encoding/json"
	"log"
	"strconv"
	"strings"
	"sync"
	"sync/atomic"
	"time"

	"github.com/rs/zerolog"
)

// LokiLogger send log messages towards Loki.
type LokiLogger struct {
	config     *clientConfig
	quit       chan struct{}
	entries    chan logEntry
	waitGroup  sync.WaitGroup
	client     httpClient
	timeOffset int64
}

type PushRequest struct {
	Streams []StreamAdapter `json:"streams"`
}

type StreamAdapter struct {
	Stream map[string]string `json:"stream"`
	Values [][]string        `json:"values"`
}

type logEntry struct {
	Timestamp time.Time
	Line      string
	Level     zerolog.Level
}

func NewLokiLogger(rootUrl, job string, timeOffset int64) (*LokiLogger, error) {
	conf := &clientConfig{
		PushURL:            strings.TrimSuffix(rootUrl, "/") + "/loki/api/v1/push",
		BatchWait:          time.Second * 2,
		BatchEntriesNumber: 1024,
		Labels: map[string]string{
			"job": job,
		},
	}
	client := &LokiLogger{
		config:     conf,
		quit:       make(chan struct{}),
		entries:    make(chan logEntry, LOG_ENTRIES_CHAN_SIZE),
		client:     httpClient{},
		timeOffset: timeOffset,
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
	now := time.Now()
	l.entries <- logEntry{
		Timestamp: now,
		Line:      string(p),
		Level:     level,
	}
	return len(p), nil
}

func (c *LokiLogger) Shutdown() {
	close(c.quit)
	c.waitGroup.Wait()
}

// Set the timeoffset in seconds
func (c *LokiLogger) SetTimeoffset(timeOffset int64) {
	atomic.StoreInt64(&c.timeOffset, timeOffset)
}

func (c *LokiLogger) run() {
	var batch [][]string
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
			timeOffset := atomic.LoadInt64(&c.timeOffset)
			ts := entry.Timestamp
			ts = ts.Add(time.Second * time.Duration(timeOffset))
			batch = append(batch, []string{
				strconv.FormatInt(ts.UnixNano(), 10),
				entry.Line,
			})
			batchSize++
			if batchSize >= c.config.BatchEntriesNumber {
				c.send(batch)
				batch = nil
				batchSize = 0
				maxWait.Reset(c.config.BatchWait)
			}
		case <-maxWait.C:
			if batchSize > 0 {
				c.send(batch)
				batch = nil
				batchSize = 0
			}
			maxWait.Reset(c.config.BatchWait)
		}
	}
}

func (c *LokiLogger) send(entries [][]string) {
	req := PushRequest{
		Streams: []StreamAdapter{
			{
				Stream: c.config.Labels,
				Values: entries,
			},
		},
	}

	buf, err := json.Marshal(req)
	if err != nil {
		log.Printf("promtail.ClientProto: unable to marshal: %s\n", err)
		return
	}

	resp, body, err := c.client.sendJsonReq("POST", c.config.PushURL, "application/json", buf)
	if err != nil {
		log.Printf("promtail.ClientProto: unable to send an HTTP request: %s\n", err)
		return
	}

	if resp.StatusCode != 204 {
		log.Printf("promtail.ClientProto: Unexpected HTTP status code: %d, message: %s\n", resp.StatusCode, body)
		return
	}
}
