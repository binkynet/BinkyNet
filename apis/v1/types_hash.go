// Copyright 2022 Ewout Prangsma
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

import (
	"crypto/sha1"
	fmt "fmt"
	"hash"
	"io"
	"sort"
	"strconv"
)

// HashTo appends the device into to the given hash.
func (s *Device) HashTo(h hash.Hash) {
	io.WriteString(h, s.GetAddress())
	io.WriteString(h, string(s.GetId()))
	io.WriteString(h, string(s.GetType()))
}

// HashTo appends the object into to the given hash.
func (s *Object) HashTo(h hash.Hash) {
	io.WriteString(h, string(s.GetId()))
	io.WriteString(h, string(s.GetType()))
	for _, conn := range s.GetConnections() {
		conn.HashTo(h)
	}
	configKeys := make([]string, 0, len(s.GetConfiguration()))
	for k := range s.GetConfiguration() {
		configKeys = append(configKeys, string(k))
	}
	sort.Strings(configKeys)
	for _, k := range configKeys {
		io.WriteString(h, k)
		io.WriteString(h, s.GetConfiguration()[ObjectConfigKey(k)])
	}
}

// HashTo appends the connection into to the given hash.
func (s *Connection) HashTo(h hash.Hash) {
	io.WriteString(h, string(s.GetKey()))
	for _, pin := range s.GetPins() {
		pin.HashTo(h)
	}
	configKeys := make([]string, 0, len(s.GetConfiguration()))
	for k := range s.GetConfiguration() {
		configKeys = append(configKeys, string(k))
	}
	sort.Strings(configKeys)
	for _, k := range configKeys {
		io.WriteString(h, k)
		io.WriteString(h, s.GetConfiguration()[ConfigKey(k)])
	}
}

// HashTo appends the pin into to the given hash.
func (s *DevicePin) HashTo(h hash.Hash) {
	io.WriteString(h, string(s.GetDeviceId()))
	io.WriteString(h, strconv.FormatUint(uint64(s.GetDeviceIndex()), 10))
}

// HashTo appends the config into to the given hash.
func (s *LocalWorkerConfig) HashTo(h hash.Hash) {
	io.WriteString(h, s.GetAlias())
	for _, dev := range s.GetDevices() {
		dev.HashTo(h)
	}
	for _, obj := range s.GetObjects() {
		obj.HashTo(h)
	}
}

// Sha1 returns a sha1 hash of the config.
func (s *LocalWorkerConfig) Sha1() string {
	h := sha1.New()
	s.HashTo(h)
	return fmt.Sprintf("%x", h.Sum(nil))
}
