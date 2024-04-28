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
	"net/http"
	"strconv"
	"time"
)

type LokiProxy struct {
	pushURL string
	client  httpClient
}

// NewLokiProxy constructs a new loki proxy that
// forwards loki push requests to the given host:port.
func NewLokiProxy(host string, port int, secure bool) *LokiProxy {
	scheme := "http"
	if secure {
		scheme = "https"
	}
	pushURL := fmt.Sprintf("%s://%s:%d%s", scheme, host, port, LokiPushPath)
	return &LokiProxy{
		pushURL: pushURL,
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

	// Change timestamp
	ts := strconv.FormatInt(time.Now().UnixNano(), 10)
	for _, stream := range pushReq.Streams {
		for _, values := range stream.Values {
			values[0] = ts
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
