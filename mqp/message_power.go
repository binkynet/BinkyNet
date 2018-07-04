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

// PowerMessage is send to control or report on the power supply to the track.
//
// Power messages are sent in the global topic.
type PowerMessage struct {
	GlobalMessageBase
	// Activate indicates power on/off
	Active bool `json:"active"`
}

// Check interface implementation
var _ Message = PowerMessage{}
