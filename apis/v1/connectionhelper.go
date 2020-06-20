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

package v1

import "strconv"

// GetStringConfig returns the configuration value for the given key.
// If not found, the given default value is returned.
func (c Connection) GetStringConfig(key string, defValue string) string {
	value, found := c.Configuration[key]
	if found {
		return value
	}
	return defValue
}

// GetBoolConfig returns the bool-typed configuration value for the given key.
// If not found or not an int, the given default value is returned.
func (c Connection) GetBoolConfig(key string, defValue bool) bool {
	value, found := c.Configuration[key]
	if found {
		if tValue, err := strconv.ParseBool(value); err == nil {
			return tValue
		}
	}
	return defValue
}

// GetIntConfig returns the int-typed configuration value for the given key.
// If not found or not an int, the given default value is returned.
func (c Connection) GetIntConfig(key string, defValue int) int {
	value, found := c.Configuration[key]
	if found {
		if tValue, err := strconv.Atoi(value); err == nil {
			return tValue
		}
	}
	return defValue
}
