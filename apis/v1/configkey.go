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
	"strconv"
)

// ConfigKey is a strongly typed well known key of a configuration entry of an object type.
type ConfigKey string

const (
	// ConfigKeyServoStraight configures the servo value for the "straight" switch position.
	ConfigKeyServoStraight ConfigKey = "straight"
	// ConfigKeyServoOff configures the servo value for the "off" switch position.
	ConfigKeyServoOff ConfigKey = "off"
	// ConfigKeyServoStep configures the step size for a servo transition from "straight" to "off" position.
	ConfigKeyServoStep ConfigKey = "step"
)

// DefaultValue returns the default value for a given configuration key.
func (key ConfigKey) DefaultValue() string {
	switch key {
	case ConfigKeyServoStraight:
		return "300"
	case ConfigKeyServoOff:
		return "400"
	case ConfigKeyServoStep:
		return "15"
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
	}
	return nil
}

func AllConfigKeys() []ConfigKey {
	return []ConfigKey{
		ConfigKeyServoStraight,
		ConfigKeyServoOff,
		ConfigKeyServoStep,
	}
}
