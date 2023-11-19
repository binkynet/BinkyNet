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

// ConnectionName is a strongly typed well known know of a connection of an object type.
type ConnectionName string

const (
	ConnectionNameSensor             ConnectionName = "sensor"
	ConnectionNameOutput             ConnectionName = "output"
	ConnectionNameServo              ConnectionName = "servo"
	ConnectionNameStraightRelay      ConnectionName = "straight-relay"
	ConnectionNameOffRelay           ConnectionName = "off-relay"
	ConnectionNamePhaseStraightRelay ConnectionName = "phase-straight-relay"
	ConnectionNamePhaseOffRelay      ConnectionName = "phase-off-relay"
	ConnectionNameRelayOutAInA       ConnectionName = "relay-out-a-in-a"
	ConnectionNameRelayOutBInA       ConnectionName = "relay-out-b-in-a"
	ConnectionNameRelayOutAInB       ConnectionName = "relay-out-a-in-b"
	ConnectionNameRelayOutBInB       ConnectionName = "relay-out-b-in-b"
	ConnectionNameMagneticStraightA  ConnectionName = "magnetic-straight-a"
	ConnectionNameMagneticStraightB  ConnectionName = "magnetic-straight-b"
	ConnectionNameMagneticOffA       ConnectionName = "magnetic-off-a"
	ConnectionNameMagneticOffB       ConnectionName = "magnetic-off-b"
)

func AllConnectionNames() []ConnectionName {
	return []ConnectionName{
		ConnectionNameSensor,
		ConnectionNameOutput,
		ConnectionNameServo,
		ConnectionNameStraightRelay,
		ConnectionNameOffRelay,
		ConnectionNamePhaseStraightRelay,
		ConnectionNamePhaseOffRelay,
		ConnectionNameRelayOutBInA,
		ConnectionNameRelayOutAInA,
		ConnectionNameRelayOutAInB,
		ConnectionNameRelayOutBInB,
		ConnectionNameMagneticStraightA,
		ConnectionNameMagneticStraightB,
		ConnectionNameMagneticOffA,
		ConnectionNameMagneticOffB,
	}
}

// ExpectedPins returns the expected number of pins for a connection with given name
func (name ConnectionName) ExpectedPins() int {
	switch name {
	default:
		return 1
	}
}

// ExpectedConfigurations returns the configuration keys that are expected for a connection
// with given name.
// Returns: Required keys, Optional keys
func (ot ConnectionName) ExpectedConfigurations() ([]ConfigKey, []ConfigKey) {
	switch ot {
	case ConnectionNameSensor:
		return nil, []ConfigKey{ConfigKeyDebug, ConfigKeyInvert, ConfigKeyThreshold}
	case ConnectionNameOutput:
		return nil, []ConfigKey{ConfigKeyDebug, ConfigKeyInvert}
	case ConnectionNameStraightRelay, ConnectionNameOffRelay:
		return nil, []ConfigKey{ConfigKeyDebug, ConfigKeyInvert, ConfigKeyPulse}
	case ConnectionNamePhaseStraightRelay, ConnectionNamePhaseOffRelay:
		return nil, []ConfigKey{ConfigKeyDebug, ConfigKeyInvert}
	case ConnectionNameRelayOutAInA, ConnectionNameRelayOutAInB, ConnectionNameRelayOutBInA, ConnectionNameRelayOutBInB:
		return nil, []ConfigKey{ConfigKeyDebug, ConfigKeyInvert}
	case ConnectionNameServo:
		return nil, []ConfigKey{ConfigKeyDebug, ConfigKeyServoStraight, ConfigKeyServoOff, ConfigKeyServoStep}
	case ConnectionNameMagneticStraightA, ConnectionNameMagneticStraightB, ConnectionNameMagneticOffA, ConnectionNameMagneticOffB:
		return nil, []ConfigKey{ConfigKeyDebug, ConfigKeyInvert}
	default:
		return nil, nil
	}
}
