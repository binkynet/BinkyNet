// Copyright 2020-2022 Ewout Prangsma
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

// Equal returns true when both objects have the same values.
func (s *PowerState) Equal(o *PowerState) bool {
	return s.GetEnabled() == o.GetEnabled()
}

// Equal returns true when both objects have the same values.
func (s *Power) Equal(o *Power) bool {
	return s.GetRequest().Equal(o.GetRequest()) &&
		s.GetActual().Equal(o.GetActual())
}

// Equal returns true when both objects have the same values.
func (s *LocState) Equal(o *LocState) bool {
	if s.GetDirection() != o.GetDirection() ||
		s.GetSpeed() != o.GetSpeed() ||
		s.GetSpeedSteps() != o.GetSpeedSteps() ||
		len(s.GetFunctions()) != len(o.GetFunctions()) {
		return false
	}
	for k, v := range s.GetFunctions() {
		ov, found := o.GetFunctions()[k]
		if v != ov || !found {
			return false
		}
	}
	return true
}

// Equal returns true when both objects have the same values.
func (s *Loc) Equal(o *Loc) bool {
	return s.GetAddress() == o.GetAddress() &&
		s.GetRequest().Equal(o.GetRequest()) &&
		s.GetActual().Equal(o.GetActual())
}

// Equal returns true when both objects have the same values.
func (s *SensorState) Equal(o *SensorState) bool {
	return s.GetValue() == o.GetValue()
}

// Equal returns true when both objects have the same values.
func (s *Sensor) Equal(o *Sensor) bool {
	return s.GetAddress() == o.GetAddress() &&
		s.GetActual().Equal(o.GetActual())
}

// Equal returns true when both objects have the same values.
func (s *OutputState) Equal(o *OutputState) bool {
	return s.GetValue() == o.GetValue()
}

// Equal returns true when both objects have the same values.
func (s *Output) Equal(o *Output) bool {
	return s.GetAddress() == o.GetAddress() &&
		s.GetRequest().Equal(o.GetRequest()) &&
		s.GetActual().Equal(o.GetActual())
}

// Equal returns true when both objects have the same values.
func (s *SwitchState) Equal(o *SwitchState) bool {
	return s.GetDirection() == o.GetDirection()
}

// Equal returns true when both objects have the same values.
func (s *Switch) Equal(o *Switch) bool {
	return s.GetAddress() == o.GetAddress() &&
		s.GetRequest().Equal(o.GetRequest()) &&
		s.GetActual().Equal(o.GetActual())
}

// Equal returns true when both objects have the same values.
func (s *Clock) Equal(o *Clock) bool {
	return s.GetPeriod() == o.GetPeriod() &&
		s.GetHours() == o.GetHours() &&
		s.GetMinutes() == o.GetMinutes() &&
		s.GetUnixtime() == o.GetUnixtime()
}

// Equal returns true when both objects have the same values.
func (s *Device) Equal(o *Device) bool {
	return s.GetId() == o.GetId() &&
		s.GetType() == o.GetType() &&
		s.GetAddress() == o.GetAddress()
}

// Equal returns true when both objects have the same values.
func (s *Object) Equal(o *Object) bool {
	return s.GetId() == o.GetId() &&
		s.GetType() == o.GetType() &&
		s.equalConnections(o) &&
		s.equalConfiguration(o)
}

// equalConnections returns true when Connections in both objects have the same values.
func (s *Object) equalConnections(o *Object) bool {
	if len(s.GetConnections()) != len(o.GetConnections()) {
		return false
	}
	ocs := o.GetConnections()
	for i, sc := range s.GetConnections() {
		if !sc.Equal(ocs[i]) {
			return false
		}
	}
	return true
}

// equalConfiguration returns true when Object in both objects have the same values.
func (s *Object) equalConfiguration(o *Object) bool {
	if len(s.GetConfiguration()) != len(o.GetConfiguration()) {
		return false
	}
	ocs := o.GetConfiguration()
	for k, sv := range s.GetConfiguration() {
		ov := ocs[k]
		if sv != ov {
			return false
		}
	}
	return true
}

// Equal returns true when both objects have the same values.
func (s *Connection) Equal(o *Connection) bool {
	return s.GetKey() == o.GetKey() &&
		s.equalPins(o) &&
		s.equalConfiguration(o)
}

// equalPins returns true when Pins in both objects have the same values.
func (s *Connection) equalPins(o *Connection) bool {
	if len(s.GetPins()) != len(o.GetPins()) {
		return false
	}
	ops := o.GetPins()
	for i, sc := range s.GetPins() {
		if !sc.Equal(ops[i]) {
			return false
		}
	}
	return true
}

// equalConfiguration returns true when Configuration in both objects have the same values.
func (s *Connection) equalConfiguration(o *Connection) bool {
	if len(s.GetConfiguration()) != len(o.GetConfiguration()) {
		return false
	}
	ocs := o.GetConfiguration()
	for k, sv := range s.GetConfiguration() {
		ov := ocs[k]
		if sv != ov {
			return false
		}
	}
	return true
}

// Equal returns true when both objects have the same values.
func (s *DevicePin) Equal(o *DevicePin) bool {
	return s.GetDeviceId() == o.GetDeviceId() &&
		s.GetDeviceIndex() == o.GetDeviceIndex()
}

// Equal returns true when both objects have the same values.
func (s *LocalWorkerConfig) Equal(o *LocalWorkerConfig) bool {
	return s.GetAlias() == o.GetAlias() &&
		s.equalDevices(o) &&
		s.equalObjects(o)
}

// equalDevices returns true when both objects have the same devices.
func (s *LocalWorkerConfig) equalDevices(o *LocalWorkerConfig) bool {
	if len(s.GetDevices()) != len(o.GetDevices()) {
		return false
	}
	ods := o.GetDevices()
	for i, sc := range s.GetDevices() {
		if !sc.Equal(ods[i]) {
			return false
		}
	}
	return true
}

// equalObjects returns true when both objects have the same devices.
func (s *LocalWorkerConfig) equalObjects(o *LocalWorkerConfig) bool {
	if len(s.GetObjects()) != len(o.GetObjects()) {
		return false
	}
	oos := o.GetObjects()
	for i, sc := range s.GetObjects() {
		if !sc.Equal(oos[i]) {
			return false
		}
	}
	return true
}
