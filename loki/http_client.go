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
	"bytes"
	"io/ioutil"
	"net/http"
	"time"
)

const LOG_ENTRIES_CHAN_SIZE = 5000

type clientConfig struct {
	// E.g. http://localhost:3100/api/prom/push
	PushURL string
	// E.g. "{job=\"somejob\"}"
	Labels             string
	BatchWait          time.Duration
	BatchEntriesNumber int
}

// http.Client wrapper for adding new methods, particularly sendJsonReq
type httpClient struct {
	parent http.Client
}

// A bit more convenient method for sending requests to the HTTP server
func (client *httpClient) sendJsonReq(method, url string, ctype string, reqBody []byte) (resp *http.Response, resBody []byte, err error) {
	req, err := http.NewRequest(method, url, bytes.NewBuffer(reqBody))
	if err != nil {
		return nil, nil, err
	}

	req.Header.Set("Content-Type", ctype)

	resp, err = client.parent.Do(req)
	if err != nil {
		return nil, nil, err
	}
	defer resp.Body.Close()

	resBody, err = ioutil.ReadAll(resp.Body)
	if err != nil {
		return nil, nil, err
	}

	return resp, resBody, nil
}
