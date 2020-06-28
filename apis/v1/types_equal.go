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
		s.GetMinutes() == o.GetMinutes()
}
