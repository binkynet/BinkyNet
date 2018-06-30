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
		for pinID, ps := range o.Connections {
			for _, p := range ps {
				if _, found := c.DeviceByID(p.DeviceID); !found {
					return errors.Wrapf(ValidationError, "Device '%s' not found in pin '%s' in object '%s'", p.DeviceID, pinID, id)
				}
			}

		}
	}
	return nil
}
