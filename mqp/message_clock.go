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

// ClockMessage is used to send the actual time of the track.
// The mode field is ignored.
type ClockMessage struct {
	MessageBase
	// Period of day "morning|afternoon|evening|night"
	Period string `json:"period"`
}

// TopicSuffix returns the suffix for topic name used by the message.
func (m ClockMessage) TopicSuffix() string {
	return "clock"
}

// IsRequest returns true when the message has requested a specific state.
func (m ClockMessage) IsRequest() bool {
	return true
}

// IsActual returns true when the message informs of a specific actual state.
func (m ClockMessage) IsActual() bool {
	return true
}
