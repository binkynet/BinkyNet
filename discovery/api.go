// Copyright 2018 Ewout Prangsma
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

package discovery

const (
	// DefaultPort number used by the discovery service.
	DefaultPort = 18512
)

// RegisterWorkerMessage is the JSON message send over UDP from the Local Worker
// to the Network Manager to register itself.
type RegisterWorkerMessage struct {
	// Unique ID of the worker
	ID string `json:"id"`
	// HTTP(s) server port of the worker
	Port int `json:"port"`
	// Set if worker is using HTTPS.
	Secure bool `json:"secure"`
}

// WorkerEnvironment is the JSON messages POST'ed to the Local Worker
// at http[s]://<ip>:<port>/environment.
// This call is made by the Network Manager after the worker
// has registered itself or the environment changes.
type WorkerEnvironment struct {
	// LocalWorker version (semver) that is expected.
	// If the actual version is different, the LocalWorker must update
	// itself.
	RequiredWorkerVersion string `json:"required-worker-version"`
	// Mqtt connection information
	Mqtt struct {
		// MQTT server host
		Host string `json:"host"`
		// MQTT server port
		Port int `json:"port"`
		// MQTT user name for authentication
		UserName string `json:"user,omitempty"`
		// MQTT password for authentication
		Password string `json:"password,omitempty"`
		// Prefix for topics used in the binkynet MQTT protocol.
		TopicPrefix string `json:"topic-prefix"`
	} `json:"mqtt"`
	Manager struct {
		// Endpoint (URL) used to reach the Binky NetManager.
		Endpoint string `json:"endpoint"`
	}
}
