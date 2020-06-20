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

// DeviceByID returns the device with given ID.
// Return false if not found.
func (c LocalWorkerConfig) DeviceByID(id DeviceID) (*Device, bool) {
	for _, dev := range c.GetDevices() {
		if dev.Id == id {
			return dev, true
		}
	}
	return nil, false
}

// ObjectByID returns the object with given ID.
// Return false if not found.
func (c LocalWorkerConfig) ObjectByID(id ObjectID) (*Object, bool) {
	for _, obj := range c.GetObjects() {
		if obj.Id == id {
			return obj, true
		}
	}
	return nil, false
}

// Validate the given configuration, returning nil on ok,
// or an error upon validation issues.
func (c LocalWorkerConfig) Validate() error {
	for _, d := range c.Devices {
		if err := d.Validate(); err != nil {
			return err
		}
	}
	for _, o := range c.Objects {
		if err := o.Validate(); err != nil {
			return err
		}
		for connName, conn := range o.Connections {
			for pinIdx, p := range conn.Pins {
				if _, found := c.DeviceByID(p.DeviceId); !found {
					return InvalidArgument("Device '%s' not found at index %d of connection '%s' in object '%s'", p.DeviceId, pinIdx, connName, o.Id)
				}
			}

		}
	}
	return nil
}
