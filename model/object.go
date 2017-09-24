package model

import "github.com/pkg/errors"

// Object holds the base info for each type of real world object.
type Object struct {
	// Unique ID of the object
	ID string `json:"id"`
	// Type of object
	Type ObjectType `json:"type"`
	// Connection pins used by this object
	// The keys used in this map are specific to the type of object.
	Pins map[string][]Pin `json:"pins,omitempty"`
}

// ObjectType identifies a type of real world objects.
type ObjectType string

const (
	ObjectTypeBinarySensor ObjectType = "binary-sensor"
	ObjectTypeBinaryOutput ObjectType = "binary-output"
	ObjectTypeServoSwitch  ObjectType = "servo-switch"
	ObjectTypeRelaySwitch  ObjectType = "relay-switch"
)

// ObjectTypeInfo holds builtin information for a type of objects.
type ObjectTypeInfo struct {
	Type        ObjectType
	Description string
	PinNames    []string
}

const (
	PinNameSensor        = "sensor"
	PinNameOutput        = "output"
	PinNameServo         = "servo"
	PinNameStraightRelay = "straight-relay"
	PinNameOffRelay      = "off-relay"
)

var (
	objectTypeInfos = []ObjectTypeInfo{
		ObjectTypeInfo{
			Type:        ObjectTypeBinarySensor,
			Description: "Single bit input sensor",
			PinNames:    []string{PinNameSensor},
		},
		ObjectTypeInfo{
			Type:        ObjectTypeBinaryOutput,
			Description: "Single bit output",
			PinNames:    []string{PinNameOutput},
		},
		ObjectTypeInfo{
			Type:        ObjectTypeServoSwitch,
			Description: "Left or right switch driven by a single servo with optional phase switching relays",
			PinNames:    []string{PinNameServo},
		},
		ObjectTypeInfo{
			Type:        ObjectTypeRelaySwitch,
			Description: "Left or right switch driven by 2 relays",
			PinNames:    []string{PinNameStraightRelay, PinNameOffRelay},
		},
	}
)

// Validate the given type, returning nil on ok,
// or an error upon validation issues.
func (t ObjectType) Validate() error {
	for _, typeInfo := range objectTypeInfos {
		if typeInfo.Type == t {
			return nil
		}
	}
	return errors.Wrapf(ValidationError, "invalid object type '%s'", string(t))
}

// Validate the given configuration, returning nil on ok,
// or an error upon validation issues.
func (o Object) Validate() error {
	if o.ID == "" {
		return errors.Wrap(ValidationError, "ID is empty")
	}
	if err := o.Type.Validate(); err != nil {
		return errors.Wrapf(ValidationError, "Error in Type of '%s': %s", o.ID, err.Error())
	}
	// TODO validate pins
	return nil
}
