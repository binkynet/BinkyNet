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

package model

// DeviceIndex is an address local to a device.
// Range 1..
type DeviceIndex uint

// DevicePin identifies a hardware device and an index within that hardware address.
type DevicePin struct {
	// Unique identifier of the device that this connection refers to.
	DeviceID DeviceID `json:"device"`
	// Index on the device (1...)
	Index DeviceIndex `json:"index"`
}
