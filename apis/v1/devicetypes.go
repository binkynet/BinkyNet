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

// DeviceType identifies a type of devices (typically chip name)
type DeviceType string

const (
	// DeviceTypeMCP23008 is the device type of a General Purpose I/O
	DeviceTypeMCP23008 DeviceType = "mcp23008"
	// DeviceTypeMCP23017 is the device type of a General Purpose I/O
	DeviceTypeMCP23017 DeviceType = "mcp23017"
	// DeviceTypePCA9685 is the device type of a Pulse Width Modulation device
	DeviceTypePCA9685 DeviceType = "pca9685"
	// DeviceTypePCF8574 is the device type of a General Purpose I/O
	DeviceTypePCF8574 DeviceType = "pcf8574"
	// DeviceTypeADS1115 is the device type of a A/D conversion
	DeviceTypeADS1115 DeviceType = "ads1115"
	// DeviceTypeBinkyCarSensor is the device type of a BinkyCar sensor
	// https://easyeda.com/editor?from=oshwlab#id=4b79ca953a7e4ea8971153b438ae1339|5964111c75b2459481dac75f8581f77e
	DeviceTypeBinkyCarSensor DeviceType = "binkyCarSensor"
	// DeviceTypeMQTT is the device type of an MQTT bridge
	DeviceTypeMQTT DeviceType = "mqtt"
)

// Validate the given type, returning nil on ok,
// or an error upon validation issues.
func (t DeviceType) Validate() error {
	switch t {
	case DeviceTypeMCP23008, DeviceTypeMCP23017, DeviceTypePCA9685, DeviceTypePCF8574, DeviceTypeADS1115, DeviceTypeBinkyCarSensor, DeviceTypeMQTT:
		return nil
	default:
		return InvalidArgument("invalid device type '%s'", string(t))
	}
}

// AllDeviceTypes returns all possible device types.
func AllDeviceTypes() []DeviceType {
	return []DeviceType{DeviceTypeMCP23008, DeviceTypeMCP23017, DeviceTypePCA9685, DeviceTypePCF8574, DeviceTypeADS1115, DeviceTypeBinkyCarSensor, DeviceTypeMQTT}
}
