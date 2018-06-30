package model

import "github.com/pkg/errors"

// Object holds the base info for each type of real world object.
type Object struct {
	// Type of object
	Type ObjectType `json:"type"`
	// Connections to devices used by this object
	// The keys used in this map are specific to the type of object.
	Connections map[ConnectionName][]DevicePin `json:"connections,omitempty"`
}

// ObjectType identifies a type of real world objects.
type ObjectType string

const (
	// ObjectTypeBinarySensor is the object type of a single-bit on/off sensor
	ObjectTypeBinarySensor ObjectType = "binary-sensor"
	// ObjectTypeBinaryOutput is the object type of a single-bit on/off output
	ObjectTypeBinaryOutput ObjectType = "binary-output"
	// ObjectTypeServoSwitch is the object type of a servo driven switch, with an option phase switching relay.
	ObjectTypeServoSwitch ObjectType = "servo-switch"
	// ObjectTypeRelaySwitch is the object type of a double relay driven switch, with an option phase switching relay.
	ObjectTypeRelaySwitch ObjectType = "relay-switch"
)

// ObjectTypeInfo holds builtin information for a type of objects.
type ObjectTypeInfo struct {
	// Type of the object
	Type ObjectType
	// Description of the object type
	Description string
	// Possible (required & optional) connections of objects of this type to devices.
	Connections []ObjectConnectionInfo
}

// ConnectionByName returns the information for the connection with given name.
// Returns name, found.
func (i ObjectTypeInfo) ConnectionByName(name ConnectionName) (ObjectConnectionInfo, bool) {
	for _, x := range i.Connections {
		if x.Name == name {
			return x, true
		}
	}
	return ObjectConnectionInfo{}, false
}

// ObjectConnectionInfo descripts a connection of a type of objects to a device.
type ObjectConnectionInfo struct {
	// Name of the connection from object to device
	Name ConnectionName
	// If this connection required?
	Required bool
	// How many device-pins are expected for this connection
	PinCount int
}

// ConnectionName is a strongly typed well known know of a connection of an object type.
type ConnectionName string

const (
	ConnectionNameSensor          ConnectionName = "sensor"
	ConnectionNameOutput          ConnectionName = "output"
	ConnectionNameServo           ConnectionName = "servo"
	ConnectionNameStraightRelay   ConnectionName = "straight-relay"
	ConnectionNameOffRelay        ConnectionName = "off-relay"
	ConnectionNamePhaseLeftRelay  ConnectionName = "phase-left-relay"
	ConnectionNamePhaseRightRelay ConnectionName = "phase-right-relay"
)

var (
	objectTypeInfos = []ObjectTypeInfo{
		ObjectTypeInfo{
			Type:        ObjectTypeBinarySensor,
			Description: "Single bit input sensor",
			Connections: []ObjectConnectionInfo{
				ObjectConnectionInfo{Name: ConnectionNameSensor, Required: true, PinCount: 1},
			},
		},
		ObjectTypeInfo{
			Type:        ObjectTypeBinaryOutput,
			Description: "Single bit output",
			Connections: []ObjectConnectionInfo{
				ObjectConnectionInfo{Name: ConnectionNameOutput, Required: true, PinCount: 1},
			},
		},
		ObjectTypeInfo{
			Type:        ObjectTypeServoSwitch,
			Description: "Left or right switch driven by a single servo with optional phase switching relays",
			Connections: []ObjectConnectionInfo{
				ObjectConnectionInfo{Name: ConnectionNameServo, Required: true, PinCount: 1},
				ObjectConnectionInfo{Name: ConnectionNamePhaseLeftRelay, Required: false, PinCount: 1},
				ObjectConnectionInfo{Name: ConnectionNamePhaseRightRelay, Required: false, PinCount: 1},
			},
		},
		ObjectTypeInfo{
			Type:        ObjectTypeRelaySwitch,
			Description: "Left or right switch driven by 2 relays",
			Connections: []ObjectConnectionInfo{
				ObjectConnectionInfo{Name: ConnectionNameStraightRelay, Required: true, PinCount: 1},
				ObjectConnectionInfo{Name: ConnectionNameOffRelay, Required: true, PinCount: 1},
			},
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

// TypeInfo returns the ObjectType information for this type of object.
func (t ObjectType) TypeInfo() ObjectTypeInfo {
	for _, typeInfo := range objectTypeInfos {
		if typeInfo.Type == t {
			return typeInfo
		}
	}
	return ObjectTypeInfo{}
}

// Validate the given configuration, returning nil on ok,
// or an error upon validation issues.
func (o Object) Validate(id string) error {
	if err := o.Type.Validate(); err != nil {
		return errors.Wrapf(ValidationError, "Error in Type of '%s': %s", id, err.Error())
	}
	typeInfo := o.Type.TypeInfo()
	// Check configured connections
	for name, pins := range o.Connections {
		cInfo, found := typeInfo.ConnectionByName(name)
		if !found {
			return errors.Wrapf(ValidationError, "Object '%s' has an unexpected connection named '%s'", id, name)
		}
		if cInfo.PinCount != len(pins) {
			return errors.Wrapf(ValidationError, "Object '%s' has an unexpected number of pins for connection '%s'. Got %d, expected %d", id, name, len(pins), cInfo.PinCount)
		}
	}
	// Look for missing connections
	for _, conn := range typeInfo.Connections {
		if conn.Required {
			if _, found := o.Connections[conn.Name]; !found {
				return errors.Wrapf(ValidationError, "Object '%s' lacks a required connection named '%s'", id, conn.Name)
			}
		}
	}
	return nil
}
