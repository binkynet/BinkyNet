// Copyright 2020 Ewout Prangsma
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

// GetAddress returns the address of the object in a safe manor
func (s *Loc) GetAddress() ObjectAddress {
	if s == nil {
		return ""
	}
	return s.Address
}

// GetAddress returns the address of the object in a safe manor
func (s *Sensor) GetAddress() ObjectAddress {
	if s == nil {
		return ""
	}
	return s.Address
}

// GetAddress returns the address of the object in a safe manor
func (s *Output) GetAddress() ObjectAddress {
	if s == nil {
		return ""
	}
	return s.Address
}

// GetAddress returns the address of the object in a safe manor
func (s *Switch) GetAddress() ObjectAddress {
	if s == nil {
		return ""
	}
	return s.Address
}

// GetId returns the id of the object in a safe manor
func (s *Device) GetId() DeviceID {
	if s == nil {
		return ""
	}
	return s.Id
}

// GetType returns the type of the object in a safe manor
func (s *Device) GetType() DeviceType {
	if s == nil {
		return ""
	}
	return s.Type
}

// GetId returns the id of the object in a safe manor
func (s *Object) GetId() ObjectID {
	if s == nil {
		return ""
	}
	return s.Id
}

// GetType returns the type of the object in a safe manor
func (s *Object) GetType() ObjectType {
	if s == nil {
		return ""
	}
	return s.Type
}

// GetKey returns the key of the object in a safe manor
func (s *Connection) GetKey() ConnectionName {
	if s == nil {
		return ""
	}
	return s.Key
}

// GetDeviceId returns the device-id of the object in a safe manor
func (s *DevicePin) GetDeviceId() DeviceID {
	if s == nil {
		return ""
	}
	return s.DeviceId
}

// GetDeviceIndex returns the index of the object in a safe manor
func (s *DevicePin) GetDeviceIndex() DeviceIndex {
	if s == nil {
		return 0
	}
	return s.Index
}
