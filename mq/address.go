package mq

import (
	"fmt"
	"strings"
)

// SplitAddress splits an address string into its components.
func SplitAddress(input string) (module, local string, err error) {
	parts := strings.Split(input, "/")
	if len(parts) != 2 {
		return "", "", fmt.Errorf("Expected <module>/<local>")
	}
	return parts[0], parts[1], nil
}

// JoinModuleLocal joins a module ID with local ID into an address.
func JoinModuleLocal(module, local string) string {
	return module + "/" + local
}
