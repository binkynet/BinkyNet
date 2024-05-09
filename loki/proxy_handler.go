// Copyright 2024 Ewout Prangsma
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
	"fmt"
	"io"
	"log"
	"net"
	"net/http"
	"strconv"
	"time"

	"github.com/rs/zerolog"
)

type LokiProxy struct {
	pushURL      string
	client       httpClient
	log          zerolog.Logger
	sourceStates map[string]*sourceState
}

// sourceState maintains a state per source of logs,
// based on IP address of the source.
type sourceState struct {
	// Timestamp in nano seconds of the first entry
	// we got for this source.
	startUptimeNanos int64
	// Timestamp on server of the first received
	// log request of this source.
	startUptime time.Time
}

// NewLokiProxy constructs a new loki proxy that
// forwards loki push requests to the given host:port.
func NewLokiProxy(log zerolog.Logger, host string, port int, secure bool) *LokiProxy {
	scheme := "http"
	if secure {
		scheme = "https"
	}
	pushURL := fmt.Sprintf("%s://%s:%d%s", scheme, host, port, LokiPushPath)
	return &LokiProxy{
		pushURL:      pushURL,
		log:          log,
		sourceStates: make(map[string]*sourceState),
	}
}

// HandlePushRequest receives a standard Loki push request,
// updates all time entries and forwards the request to the configure loki URL.
func (lp *LokiProxy) HandlePushRequest(resp http.ResponseWriter, req *http.Request) {
	// Read request body
	defer req.Body.Close()
	content, err := io.ReadAll(req.Body)
	if err != nil {
		resp.WriteHeader(http.StatusBadRequest)
		resp.Write([]byte(err.Error()))
		return
	}

	// Parse body
	var pushReq PushRequest
	if err := json.Unmarshal(content, &pushReq); err != nil {
		resp.WriteHeader(http.StatusBadRequest)
		resp.Write([]byte(err.Error()))
		return
	}

	// Get state of the source of the logs
	ip, _, _ := net.SplitHostPort(req.RemoteAddr)
	source := lp.sourceStates[ip]
	if source == nil {
		source = &sourceState{
			startUptime: time.Now(),
		}
		lp.sourceStates[ip] = source
	}

	// Detect a change in uptime
	// If any of the timestamps in the logs are lower
	// than the state we recorded, we decide that the uptime
	// has changed.
	maxTS := int64(0)
	for _, stream := range pushReq.Streams {
		for _, values := range stream.Values {
			if ts, err := strconv.ParseInt(values[0], 10, 64); err == nil {
				// We have a valid timestamp
				maxTS = max(maxTS, ts)
			}
		}
	}
	if source.startUptimeNanos == 0 || maxTS < source.startUptimeNanos {
		source.startUptimeNanos = maxTS
		source.startUptime = time.Now()
		lp.log.Info().
			Str("source", ip).
			Msg("Detected change in uptime for source of logs")
	}

	// Change timestamp
	for _, stream := range pushReq.Streams {
		for _, values := range stream.Values {
			// Parse timestamp
			if ts, err := strconv.ParseInt(values[0], 10, 64); err == nil {
				// We have a valid timestamp
				ts -= source.startUptimeNanos
				ts += source.startUptime.UnixNano()
				values[0] = strconv.FormatInt(ts, 10)
			}
		}
	}

	// Encode request into buffer
	buf, err := json.Marshal(pushReq)
	if err != nil {
		log.Printf("promtail.ClientProto: unable to marshal: %s\n", err)
		return
	}

	// Push updated body to real loki
	lokiResp, respBody, err := lp.client.sendJsonReq("POST", lp.pushURL, "application/json", buf)
	if err != nil {
		log.Printf("promtail.ClientProto: unable to send an HTTP request: %s\n", err)
		return
	}

	resp.WriteHeader(lokiResp.StatusCode)
	resp.Write(respBody)
}
