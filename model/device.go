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
	// DeviceTypeMCP23017 is the device type of a General Purpose I/O
	DeviceTypeMCP23017 DeviceType = "mcp23017"
	// DeviceTypePCA9685 is the device type of a Pulse Width Modulation device
	DeviceTypePCA9685 DeviceType = "pca9685"
)

// Validate the given type, returning nil on ok,
// or an error upon validation issues.
func (t DeviceType) Validate() error {
	switch t {
	case DeviceTypeMCP23017, DeviceTypePCA9685:
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