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

import (
	context "context"
	"crypto/sha1"
	fmt "fmt"
	"net"
	"os"
	"runtime"
	"sort"
	"strconv"
	"strings"

	"github.com/grandcat/zeroconf"
)

const (
	textVersion      = "version"
	textAPIVersion   = "api_version"
	textProviderName = "provider_name"
	textSecure       = "secure"
)

// ParseServiceInfo parses a ServiceEntry into a ServiceInfo message.
func ParseServiceInfo(se *zeroconf.ServiceEntry) (*ServiceInfo, error) {
	result := &ServiceInfo{
		ApiPort:    int32(se.Port),
		ApiAddress: se.HostName,
		Secure:     true,
	}
	if len(se.AddrIPv4) > 0 {
		result.ApiAddress = se.AddrIPv4[0].String()
	} else if len(se.AddrIPv6) > 0 {
		result.ApiAddress = se.AddrIPv6[0].String()
	}
	for _, t := range se.Text {
		parts := strings.SplitN(t, "=", 2)
		if len(parts) != 2 {
			continue
		}
		switch parts[0] {
		case textVersion:
			result.Version = parts[1]
		case textAPIVersion:
			result.ApiVersion = parts[1]
		case textSecure:
			if b, err := strconv.ParseBool(parts[1]); err == nil {
				result.Secure = b
			}
		case textProviderName:
			result.ProviderName = parts[1]
		}
	}
	return result, nil
}

// RegisterServiceEntry runs a registration service for the given service entry
// until the given context is canceled.
func RegisterServiceEntry(ctx context.Context, serviceType string, info ServiceInfo) error {
	var ifaces []net.Interface
	if host, found := GetServiceInfoHost(ctx); found && host != "" {
		// Find interfaces with given IP
		var selectedIFaces []net.Interface
		allInterfaces, err := net.Interfaces()
		if err != nil {
			return err
		}
		for _, ifi := range allInterfaces {
			if (ifi.Flags & net.FlagUp) == 0 {
				continue
			}
			if (ifi.Flags & net.FlagMulticast) == 0 {
				continue
			}
			addrs, _ := ifi.Addrs()
			for _, addr := range addrs {
				addrStr := addr.String()
				if addrStr == host || strings.HasPrefix(addrStr, host+"/") {
					selectedIFaces = append(selectedIFaces, ifi)
					break
				}
			}
		}
		if len(selectedIFaces) == 0 && host != "0.0.0.0" {
			return fmt.Errorf("Did not find interface with address '%s'", host)
		}
		ifaces = selectedIFaces
	}

	return registerServiceEntryOnInterfaces(ctx, serviceType, info, ifaces)
}

// registerServiceEntryOnInterfaces runs a registration service for the given service entry
// on the given interfaces until the given context is canceled.
func registerServiceEntryOnInterfaces(ctx context.Context, serviceType string, info ServiceInfo,
	intfs []net.Interface) error {
	text := []string{
		textVersion + "=" + info.GetVersion(),
		textAPIVersion + "=" + info.GetApiVersion(),
		textSecure + "=" + strconv.FormatBool(info.GetSecure()),
		textProviderName + "=" + info.GetProviderName(),
	}
	instance, err := os.Hostname()
	if err != nil {
		instance, err = CreateHostID()
		if err != nil {
			return err
		}
	}

	srv, err := zeroconf.Register(instance, serviceType, "local.", int(info.GetApiPort()), text, intfs)
	if err != nil {
		return err
	}
	srv.TTL(30)
	<-ctx.Done()
	srv.Shutdown()
	return nil
}

// CreateHostID creates a host ID based on network hardware addresses.
func CreateHostID() (string, error) {
	if content, err := os.ReadFile("/etc/machine-id"); err == nil {
		content = []byte(strings.TrimSpace(string(content)))
		id := fmt.Sprintf("%x", sha1.Sum(content))
		return id[:10], nil
	}

	ifs, err := net.Interfaces()
	if err != nil {
		return "", err
	}
	list := make([]string, 0, len(ifs))
	for _, v := range ifs {
		f := v.Flags
		if f&net.FlagUp != 0 && f&net.FlagLoopback == 0 {
			fmt.Printf("Using intf %s with addr %s\n", v.Name, v.HardwareAddr.String())
			h := v.HardwareAddr.String()
			if len(h) > 0 {
				list = append(list, h)
			}
		}
	}
	sort.Strings(list) // sort host IDs
	list = append(list, runtime.GOOS, runtime.GOARCH)
	data := []byte(strings.Join(list, ","))
	id := fmt.Sprintf("%x", sha1.Sum(data))
	return id[:10], nil
}
