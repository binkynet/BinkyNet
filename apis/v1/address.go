// Copyright 2020-2021 Ewout Prangsma
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
	fmt "fmt"
	"strings"
)

// ObjectAddress is a strongly typed address of an object.
// It contains <module> '/' <object-id>
type ObjectAddress string

// GlobalModuleID defines the module part of an ObjectAddress for addresses
// that are independent of specific modules.
const GlobalModuleID = "GLOBAL"

// SplitAddress splits an address string into its components.
func SplitAddress(input ObjectAddress) (module, local string, err error) {
	parts := strings.Split(string(input), "/")
	if len(parts) != 2 {
		return "", "", fmt.Errorf("Expected <module>/<local>")
	}
	return parts[0], parts[1], nil
}

// JoinModuleLocal joins a module ID with local ID into an address.
func JoinModuleLocal(module, local string) ObjectAddress {
	return ObjectAddress(module + "/" + local)
}

// IsGlobal returns true if the given address has a global module ID.
func (addr ObjectAddress) IsGlobal() bool {
	module, _, _ := SplitAddress(addr)
	return module == GlobalModuleID
}
