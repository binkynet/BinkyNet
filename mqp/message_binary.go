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

// BinaryMessage is used to:
// - request to set the state of a binary output
// - confirm the actual state of a binary output
// - report the actual state of a binary sensor
type BinaryMessage struct {
	MessageBase
	// Address (module/local)
	Address ObjectAddress `json:"address"`
	// Value of the binary on/off
	Value bool `json:"value"`
}

// Check interface implementation
var _ Message = BinaryMessage{}

// TopicSuffix returns the suffix for topic name used by the messages.
func (l BinaryMessage) TopicSuffix() string {
	return "binary"
}
