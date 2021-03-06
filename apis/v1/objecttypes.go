// Copyright 2020-2021 Ewout Prangsma
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

package v1

// ObjectType identifies a type of real world objects.
type ObjectType string

const (
	// ObjectTypeBinarySensor is the object type of a single-bit on/off sensor
	ObjectTypeBinarySensor ObjectType = "binary-sensor"
	// ObjectTypeBinaryOutput is the object type of a single-bit on/off output
	ObjectTypeBinaryOutput ObjectType = "binary-output"
	// ObjectTypeServoSwitch is the object type of a servo driven switch, with an option phase switching relay.
	ObjectTypeServoSwitch ObjectType = "servo-switch"
	// ObjectTypeRelaySwitch is the object type of a double relay driven switch, with an option phase switching relay.
	ObjectTypeRelaySwitch ObjectType = "relay-switch"
)

// ExceptedConnections returns the connection names that are expected for an object
// of given type.
func (ot ObjectType) ExceptedConnections() []ConnectionName {
	switch ot {
	case ObjectTypeBinarySensor:
		return []ConnectionName{ConnectionNameSensor}
	case ObjectTypeBinaryOutput:
		return []ConnectionName{ConnectionNameOutput}
	case ObjectTypeServoSwitch:
		return []ConnectionName{ConnectionNameServo, ConnectionNamePhaseStraightRelay, ConnectionNamePhaseOffRelay}
	case ObjectTypeRelaySwitch:
		return []ConnectionName{ConnectionNameStraightRelay, ConnectionNameOffRelay}
	default:
		return nil
	}
}

// AllObjectTypes returns all possible object types.
func AllObjectTypes() []ObjectType {
	return []ObjectType{ObjectTypeBinarySensor, ObjectTypeBinaryOutput, ObjectTypeServoSwitch, ObjectTypeRelaySwitch}
}
