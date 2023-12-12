// Copyright 2023 Ewout Prangsma
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

// ObjectConfigKey is a strongly typed well known key of a configuration entry of an object type.
type ObjectConfigKey string

const (
	// ObjectConfigKeyDebug turns on/off debugging information for a specific object.
	// Values are true|false|0|1.
	ObjectConfigKeyDebug ObjectConfigKey = "debug"
	// ObjectConfigKeyMagneticAlwaysEnabled configures the always-enabled setting for
	// a magnetic switch. If set to true, the magnets are always powered, even when
	// the network controller does not indicate the switch as being enabled.
	// Values are true|false|0|1.
	ObjectConfigKeyMagneticAlwaysEnabled ObjectConfigKey = "magnetic-always-enabled"
	// ObjectConfigKeyMagneticStraightInvert configures the inversion setting
	// magnetic wires on the magnet driving the straight direction.
	// Values are true|false|0|1.
	ObjectConfigKeyMagneticStraightInvert ObjectConfigKey = "magnetic-straight-invert"
	// ObjectConfigKeyMagneticOffInvert configures the inversion setting
	// magnetic wires on the magnet driving the off direction.
	// Values are true|false|0|1.
	ObjectConfigKeyMagneticOffInvert ObjectConfigKey = "magnetic-off-invert"
)

// DefaultValue returns the default value for a given configuration key.
func (key ObjectConfigKey) DefaultValue() string {
	switch key {
	case ObjectConfigKeyDebug,
		ObjectConfigKeyMagneticAlwaysEnabled,
		ObjectConfigKeyMagneticStraightInvert,
		ObjectConfigKeyMagneticOffInvert:
		return "false"
	default:
		return ""
	}
}

// ValidateValue validates a given value for a given configuration key.
func (key ObjectConfigKey) ValidateValue(value string) error {
	if value == "" {
		// All ok
		return nil
	}
	switch key {
	case ObjectConfigKeyDebug,
		ObjectConfigKeyMagneticAlwaysEnabled,
		ObjectConfigKeyMagneticStraightInvert,
		ObjectConfigKeyMagneticOffInvert:
		if _, err := strconv.ParseBool(value); err != nil {
			return fmt.Errorf("not a boolean")
		}
	}
	return nil
}

func AllObjectConfigKeys() []ObjectConfigKey {
	return []ObjectConfigKey{
		ObjectConfigKeyDebug,
		ObjectConfigKeyMagneticAlwaysEnabled,
		ObjectConfigKeyMagneticStraightInvert,
		ObjectConfigKeyMagneticOffInvert,
	}
}
