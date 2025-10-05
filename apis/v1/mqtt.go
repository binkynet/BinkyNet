// Copyright 2020-2025 Ewout Prangsma
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

// Create the MQTT topic prefix for any state/command topic
// in the module with given ID.
func GetMqttModulePrefix(moduleID string) string {
	return "/binky/" + moduleID
}

// Create the MQTT topic prefix for any module info state topic
// in the module with given ID.
// Use for module status, wifi info, uptime etc.
func GetMqttModuleInfoPrefix(moduleID string) string {
	return GetMqttModulePrefix(moduleID) + "/info"
}

const (
	// Suffix for module info status topic
	StatusTopicSuffix = "/status"
	// Suffix for module info uptime topic
	UptimeTopicSuffix = "/uptime"
	// Suffix for module info IP address topic
	IpAddressTopicSuffix = "/ip_address"
	// Suffix for module info WIFI signal topic
	WifiSignalTopicSuffix = "/wifi_signal"
)
