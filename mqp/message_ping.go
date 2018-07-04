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

package mqp

// PingMessage is send to give a "sign of live".
//
// The topic suffix for this type of global message is:
//   /ping
//
// Ping messages are expected to be sent every 30 seconds.
type PingMessage struct {
	GlobalMessageBase
	// Version of the Message Queue Protocol supported by the sender
	ProtocolVersion string `json:"protocol_version"`
	// Version of the software of the sender
	Version string `json:"version"`
	// Uptime of the sender in seconds
	Uptime int `json:"uptime"`
}

// Check interface implementation
var _ Message = PingMessage{}

// TopicSuffix returns the suffix for topic name used by this message.
func (m PingMessage) TopicSuffix() string {
	return "ping"
}
