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

// Clone the entire object
func (s *Device) Clone() *Device {
	if s == nil {
		return nil
	}
	clone := *s
	return &clone
}

// Clone the entire object
func (s *Object) Clone() *Object {
	if s == nil {
		return nil
	}
	clone := *s
	clone.Connections = make([]*Connection, 0, len(s.GetConnections()))
	for _, x := range s.GetConnections() {
		clone.Connections = append(clone.Connections, x.Clone())
	}
	return &clone
}

// Clone the entire object
func (s *Connection) Clone() *Connection {
	if s == nil {
		return nil
	}
	clone := *s
	clone.Pins = make([]*DevicePin, 0, len(s.GetPins()))
	for _, x := range s.GetPins() {
		clone.Pins = append(clone.Pins, x.Clone())
	}
	clone.Configuration = make(map[ConfigKey]string)
	for k, v := range s.Configuration {
		clone.Configuration[k] = v
	}
	return &clone
}

// Clone the entire object
func (s *DevicePin) Clone() *DevicePin {
	if s == nil {
		return nil
	}
	clone := *s
	return &clone
}

// Clone the entire object
func (s *LocalWorkerConfig) Clone() *LocalWorkerConfig {
	if s == nil {
		return nil
	}
	clone := *s
	clone.Devices = make([]*Device, 0, len(s.GetDevices()))
	for _, x := range s.GetDevices() {
		clone.Devices = append(clone.Devices, x.Clone())
	}
	clone.Objects = make([]*Object, 0, len(s.GetObjects()))
	for _, x := range s.GetObjects() {
		clone.Objects = append(clone.Objects, x.Clone())
	}
	return &clone
}

// Clone the entire object
func (s *LocalWorkerInfo) Clone() *LocalWorkerInfo {
	if s == nil {
		return nil
	}
	clone := *s
	return &clone
}

// Clone the entire object
func (s *LocalWorker) Clone() *LocalWorker {
	if s == nil {
		return nil
	}
	clone := *s
	clone.Request = s.GetRequest().Clone()
	clone.Actual = s.GetActual().Clone()
	return &clone
}

// Clone the entire object
func (s *PowerState) Clone() *PowerState {
	if s == nil {
		return nil
	}
	clone := *s
	return &clone
}

// Clone the entire object
func (s *Power) Clone() *Power {
	if s == nil {
		return nil
	}
	clone := *s
	clone.Request = s.GetRequest().Clone()
	clone.Actual = s.GetActual().Clone()
	return &clone
}

// Clone the entire object
func (s *LocState) Clone() *LocState {
	if s == nil {
		return nil
	}
	clone := *s
	clone.Functions = make(map[int32]bool)
	for k, v := range s.GetFunctions() {
		clone.Functions[k] = v
	}
	return &clone
}

// Clone the entire object
func (s *Loc) Clone() *Loc {
	if s == nil {
		return nil
	}
	clone := *s
	clone.Request = s.GetRequest().Clone()
	clone.Actual = s.GetActual().Clone()
	return &clone
}

// Clone the entire object
func (s *SensorState) Clone() *SensorState {
	if s == nil {
		return nil
	}
	clone := *s
	return &clone
}

// Clone the entire object
func (s *Sensor) Clone() *Sensor {
	if s == nil {
		return nil
	}
	clone := *s
	clone.Actual = s.GetActual().Clone()
	return &clone
}

// Clone the entire object
func (s *OutputState) Clone() *OutputState {
	if s == nil {
		return nil
	}
	clone := *s
	return &clone
}

// Clone the entire object
func (s *Output) Clone() *Output {
	if s == nil {
		return nil
	}
	clone := *s
	clone.Request = s.GetRequest().Clone()
	clone.Actual = s.GetActual().Clone()
	return &clone
}

// Clone the entire object
func (s *SwitchState) Clone() *SwitchState {
	if s == nil {
		return nil
	}
	clone := *s
	return &clone
}

// Clone the entire object
func (s *Switch) Clone() *Switch {
	if s == nil {
		return nil
	}
	clone := *s
	clone.Request = s.GetRequest().Clone()
	clone.Actual = s.GetActual().Clone()
	return &clone
}

// Clone the entire object
func (s *Clock) Clone() *Clock {
	if s == nil {
		return nil
	}
	clone := *s
	return &clone
}

// Clone the entire object
func (s *DeviceDiscovery) Clone() *DeviceDiscovery {
	if s == nil {
		return nil
	}
	clone := *s
	clone.Request = s.GetRequest().Clone()
	clone.Actual = s.GetActual().Clone()
	return &clone
}

// Clone the entire object
func (s *DiscoverRequest) Clone() *DiscoverRequest {
	if s == nil {
		return nil
	}
	clone := *s
	return &clone
}

// Clone the entire object
func (s *DiscoverResult) Clone() *DiscoverResult {
	if s == nil {
		return nil
	}
	clone := *s
	clone.Addresses = append([]string{}, s.GetAddresses()...)
	return &clone
}
