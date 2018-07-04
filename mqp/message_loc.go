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

// LocMessage is used to control the speed, direction & functions of a loc.
type LocMessage struct {
	ObjectMessageBase
	// Speed in steps
	Speed int `json:"speed"`
	// Maximum speed steps of this loc
	SpeedSteps int `json:"speedSteps"`
	// Direction "forward|reverse"
	Direction string `json:"direction"`
	// State of functions
	Functions map[int]bool `json:"functions"`
}

// Check interface implementation
var _ Message = LocMessage{}

// TopicSuffix returns the suffix for topic name used by LocRequest messages.
func (l LocMessage) TopicSuffix() string {
	return "loc"
}
