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
