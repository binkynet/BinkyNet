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

// Validate the given configuration, returning nil on ok,
// or an error upon validation issues.
func (d Device) Validate() error {
	if err := d.Type.Validate(); err != nil {
		return InvalidArgument("Error in Type of '%s': %s", d.Id, err.Error())
	}
	if d.Address == "" {
		return InvalidArgument("Address of '%s' is empty", d.Id)
	}
	return nil
}
