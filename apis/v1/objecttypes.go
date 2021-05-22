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

// ExpectedConnections returns the connection names that are expected for an object
// of given type.
// Returns: Required connections, Optional connections
func (ot ObjectType) ExpectedConnections() ([]ConnectionName, []ConnectionName) {
	switch ot {
	case ObjectTypeBinarySensor:
		return []ConnectionName{ConnectionNameSensor}, nil
	case ObjectTypeBinaryOutput:
		return []ConnectionName{ConnectionNameOutput}, nil
	case ObjectTypeServoSwitch:
		return []ConnectionName{ConnectionNameServo}, []ConnectionName{ConnectionNamePhaseStraightRelay, ConnectionNamePhaseOffRelay}
	case ObjectTypeRelaySwitch:
		return []ConnectionName{ConnectionNameStraightRelay, ConnectionNameOffRelay}, nil
	default:
		return nil, nil
	}
}

// ExpectedConfigurations returns the configuration keys that are expected for an object
// of given type.
// Returns: Required keys, Optional keys
func (ot ObjectType) ExpectedConfigurations() ([]ConfigKey, []ConfigKey) {
	switch ot {
	case ObjectTypeBinarySensor:
		return nil, nil
	case ObjectTypeBinaryOutput:
		return nil, nil
	case ObjectTypeServoSwitch:
		return nil, []ConfigKey{ConfigKeyServoStraight, ConfigKeyServoOff, ConfigKeyServoStep}
	case ObjectTypeRelaySwitch:
		return nil, nil
	default:
		return nil, nil
	}
}

// AllObjectTypes returns all possible object types.
func AllObjectTypes() []ObjectType {
	return []ObjectType{ObjectTypeBinarySensor, ObjectTypeBinaryOutput, ObjectTypeServoSwitch, ObjectTypeRelaySwitch}
}
