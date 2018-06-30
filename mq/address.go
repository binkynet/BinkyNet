package mq

import (
	"fmt"
	"strings"
)

// ObjectAddress is a strongly typed address of an object.
// It contains <module> '/' <object-id>
type ObjectAddress string

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
