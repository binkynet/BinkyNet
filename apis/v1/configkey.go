// Copyright 2021 Ewout Prangsma
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

import (
	"fmt"
	"math"
	"strconv"
)

// ConfigKey is a strongly typed well known key of a configuration entry of
// a connection of an object type.
type ConfigKey string

const (
	// ConfigKeyDebug turns on/off debugging information for a specific object.
	// Values are true|false|0|1.
	ConfigKeyDebug ConfigKey = "debug"
	// ConfigKeyServoStraight configures the servo value for the "straight" switch position.
	ConfigKeyServoStraight ConfigKey = "straight"
	// ConfigKeyServoOff configures the servo value for the "off" switch position.
	ConfigKeyServoOff ConfigKey = "off"
	// ConfigKeyServoStep configures the step size for a servo transition from "straight" to "off" position.
	ConfigKeyServoStep ConfigKey = "step"
	// ConfigKeyInvert configures the inversion setting of an i/o pin.
	// Values are true|false|0|1.
	ConfigKeyInvert ConfigKey = "invert"
	// ConfigKeyPulse configures the length of the pulse (for relays) in ms.
	ConfigKeyPulse ConfigKey = "pulse"
	// ConfigKeyThreshold configures the threshold for measured analog values
	// above which a sensor is considered "on".
	ConfigKeyThreshold ConfigKey = "threshold"
)

// DefaultValue returns the default value for a given configuration key.
func (key ConfigKey) DefaultValue() string {
	switch key {
	case ConfigKeyDebug:
		return "false"
	case ConfigKeyServoStraight:
		return "300"
	case ConfigKeyServoOff:
		return "400"
	case ConfigKeyServoStep:
		return "15"
	case ConfigKeyInvert:
		return "false"
	case ConfigKeyPulse:
		return "1000"
	case ConfigKeyThreshold:
		return "128"
	default:
		return ""
	}
}

// ValidateValue validates a given value for a given configuration key.
func (key ConfigKey) ValidateValue(value string) error {
	if value == "" {
		// All ok
		return nil
	}
	switch key {
	case ConfigKeyServoStraight, ConfigKeyServoOff, ConfigKeyServoStep:
		if x, err := strconv.Atoi(value); err != nil {
			return fmt.Errorf("not a valid number")
		} else if x < 0 {
			return fmt.Errorf("too small")
		} else if x > 900 {
			return fmt.Errorf("too large")
		}
	case ConfigKeyDebug, ConfigKeyInvert:
		if _, err := strconv.ParseBool(value); err != nil {
			return fmt.Errorf("not a boolean")
		}
	case ConfigKeyPulse:
		if x, err := strconv.Atoi(value); err != nil {
			return fmt.Errorf("not a valid number")
		} else if x <= 0 {
			return fmt.Errorf("too small")
		} else if x > 5000 {
			return fmt.Errorf("too large")
		}
	case ConfigKeyThreshold:
		if x, err := strconv.Atoi(value); err != nil {
			return fmt.Errorf("not a valid number")
		} else if x <= 0 {
			return fmt.Errorf("too small")
		} else if x > math.MaxUint16 {
			return fmt.Errorf("too large")
		}
	}
	return nil
}

func AllConfigKeys() []ConfigKey {
	return []ConfigKey{
		ConfigKeyDebug,
		ConfigKeyServoStraight,
		ConfigKeyServoOff,
		ConfigKeyServoStep,
		ConfigKeyInvert,
		ConfigKeyThreshold,
	}
}
