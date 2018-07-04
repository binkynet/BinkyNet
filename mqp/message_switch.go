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

import "fmt"

// SwitchDirection is the type of the state "value" of a switch.
type SwitchDirection string

const (
	SwitchDirectionStraight = SwitchDirection("straight")
	SwitchDirectionOff      = SwitchDirection("off")
)

// Validate the given directory
func (s SwitchDirection) Validate() error {
	switch string(s) {
	case "straight", "off":
		return nil
	default:
		return fmt.Errorf("unknown switch direction '%s'", string(s))
	}
}

// SwitchMessage is used to request a switch to move to a given direction
// or report an actual state of a switch.
//
// The topic suffix for this type of message is:
//   /switch
//
type SwitchMessage struct {
	ObjectMessageBase
	// Direction of the switch "straight|off"
	Direction SwitchDirection `json:"direction"`
}

// Check interface implementation
var _ Message = SwitchMessage{}

// TopicSuffix returns the suffix for topic name used by SwitchRequest messages.
func (l SwitchMessage) TopicSuffix() string {
	return "switch"
}
