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

package model

import (
	"github.com/pkg/errors"
)

// LocalWorkerConfig holds the configuration of a single local worker.
type LocalWorkerConfig struct {
	// Alias is the name used to address this worker in MQ messages.
	// If not set, the worker ID is used.
	Alias string `json:"alias,omitempty"`
	// List of devices attached to the local worker
	Devices map[DeviceID]Device `json:"devices,omitempty"`
	// List of real world objects controlled by the local worker
	Objects map[ObjectID]Object `json:"objects,omitempty"`
}

// DeviceByID returns the device with given ID.
// Return false if not found.
func (c LocalWorkerConfig) DeviceByID(id DeviceID) (Device, bool) {
	result, found := c.Devices[id]
	return result, found
}

// ObjectByID returns the object with given ID.
// Return false if not found.
func (c LocalWorkerConfig) ObjectByID(id ObjectID) (Object, bool) {
	result, found := c.Objects[id]
	return result, found
}

// Validate the given configuration, returning nil on ok,
// or an error upon validation issues.
func (c LocalWorkerConfig) Validate() error {
	for id, d := range c.Devices {
		if err := d.Validate(id); err != nil {
			return maskAny(err)
		}
	}
	for id, o := range c.Objects {
		if err := o.Validate(id); err != nil {
			return maskAny(err)
		}
		for connName, conn := range o.Connections {
			for pinIdx, p := range conn.Pins {
				if _, found := c.DeviceByID(p.DeviceID); !found {
					return errors.Wrapf(ValidationError, "Device '%s' not found at index %d of connection '%s' in object '%s'", p.DeviceID, pinIdx, connName, id)
				}
			}

		}
	}
	return nil
}
