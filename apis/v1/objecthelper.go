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
				ObjectConnectionInfo{Name: ConnectionNamePhaseStraightRelay, Required: false, PinCount: 1},
				ObjectConnectionInfo{Name: ConnectionNamePhaseOffRelay, Required: false, PinCount: 1},
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
	return InvalidArgument("invalid object type '%s'", string(t))
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

// ConnectionByName returns the connection of the object with given name
func (o Object) ConnectionByName(name ConnectionName) (*Connection, bool) {
	for _, conn := range o.GetConnections() {
		if conn.Key == name {
			return conn, true
		}
	}
	return nil, false
}

// Validate the given configuration, returning nil on ok,
// or an error upon validation issues.
func (o Object) Validate() error {
	if err := o.Type.Validate(); err != nil {
		return InvalidArgument("Error in Type of '%s': %s", o.Id, err.Error())
	}
	typeInfo := o.Type.TypeInfo()
	// Check configured connections
	for _, conn := range o.Connections {
		cInfo, found := typeInfo.ConnectionByName(conn.Key)
		if !found {
			return InvalidArgument("Object '%s' has an unexpected connection named '%s'", o.Id, conn.Key)
		}
		if cInfo.PinCount != len(conn.Pins) {
			return InvalidArgument("Object '%s' has an unexpected number of pins for connection '%s'. Got %d, expected %d", o.Id, conn.Key, len(conn.Pins), cInfo.PinCount)
		}
		// Validate pins
		for idx, p := range conn.Pins {
			if p.Index == 0 {
				return InvalidArgument("Object '%s' has an invalid index at position %d of the connection named '%s'", o.Id, idx, conn.Key)
			}
		}
	}
	// Look for missing connections
	for _, conn := range typeInfo.Connections {
		if conn.Required {
			if _, found := o.ConnectionByName(conn.Name); !found {
				return InvalidArgument("Object '%s' lacks a required connection named '%s'", o.Id, conn.Name)
			}
		}
	}
	return nil
}
