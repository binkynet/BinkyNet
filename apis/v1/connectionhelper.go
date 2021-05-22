// Copyright 2018-2021 Ewout Prangsma
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

import "strconv"

// GetStringConfig returns the configuration value for the given key.
// If not found, the default value for the key is returned.
func (c Connection) GetStringConfig(key ConfigKey) string {
	value, found := c.Configuration[key]
	if found {
		return value
	}
	return key.DefaultValue()
}

// GetBoolConfig returns the bool-typed configuration value for the given key.
// If not found or not an int, the default value for the key is returned.
func (c Connection) GetBoolConfig(key ConfigKey) bool {
	value, found := c.Configuration[key]
	if !found {
		value = key.DefaultValue()
	}
	if tValue, err := strconv.ParseBool(value); err == nil {
		return tValue
	}
	return false
}

// GetIntConfig returns the int-typed configuration value for the given key.
// If not found or not an int, the default value for the key is returned.
func (c Connection) GetIntConfig(key ConfigKey) int {
	value, found := c.Configuration[key]
	if !found {
		value = key.DefaultValue()
	}
	if tValue, err := strconv.Atoi(value); err == nil {
		return tValue
	}
	return 0
}
