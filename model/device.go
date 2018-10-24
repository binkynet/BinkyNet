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

import "github.com/pkg/errors"

// DeviceID is a strongly typed identifier of a device.
type DeviceID string

// Device holds configuration data for a specif hardward device.
// Typically a hardware device is attached to a bus.
type Device struct {
	// Address is used to identify the device on a bus.
	Address string `json:"address"`
	// Type of the device
	Type DeviceType `json:"type"`
}

// DeviceType identifies a type of devices (typically chip name)
type DeviceType string

const (
	// DeviceTypeMCP23008 is the device type of a General Purpose I/O
	DeviceTypeMCP23008 DeviceType = "mcp23008"
	// DeviceTypeMCP23017 is the device type of a General Purpose I/O
	DeviceTypeMCP23017 DeviceType = "mcp23017"
	// DeviceTypePCA9685 is the device type of a Pulse Width Modulation device
	DeviceTypePCA9685 DeviceType = "pca9685"
)

// Validate the given type, returning nil on ok,
// or an error upon validation issues.
func (t DeviceType) Validate() error {
	switch t {
	case DeviceTypeMCP23008, DeviceTypeMCP23017, DeviceTypePCA9685:
		return nil
	default:
		return errors.Wrapf(ValidationError, "invalid device type '%s'", string(t))
	}
}

// Validate the given configuration, returning nil on ok,
// or an error upon validation issues.
func (d Device) Validate(id DeviceID) error {
	if err := d.Type.Validate(); err != nil {
		return errors.Wrapf(ValidationError, "Error in Type of '%s': %s", id, err.Error())
	}
	if d.Address == "" {
		return errors.Wrapf(ValidationError, "Address of '%s' is empty", id)
	}
	return nil
}
