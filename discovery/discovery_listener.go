// Copyright 2019 Ewout Prangsma
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

package discovery

import (
	"context"
	"strconv"
	"strings"

	"github.com/grandcat/zeroconf"
	"github.com/rs/zerolog"

	api "github.com/binkynet/BinkyNet/apis/v1"
)

// NetworkMasterListener is a service that listens for discovery broadcasts
// by the network master.
type NetworkMasterListener struct {
	log zerolog.Logger
	cb  NetworkMasterChangedCallback
}

// NetworkMasterChangedCallback is type for callbacks when network change
// has been detected.
type NetworkMasterChangedCallback func(info api.NetworkMasterInfo, apiAddress string)

// NewNetworkMasterListener creates and initializes a NetworkMasterListener.
func NewNetworkMasterListener(log zerolog.Logger, cb NetworkMasterChangedCallback) *NetworkMasterListener {
	return &NetworkMasterListener{
		log: log,
		cb:  cb,
	}
}

// Run the listener until the given context is canceled.
func (l *NetworkMasterListener) Run(ctx context.Context) error {
	// Discover all services on the network (e.g. _workstation._tcp)
	log := l.log
	resolver, err := zeroconf.NewResolver(nil)
	if err != nil {
		log.Debug().Err(err).Msg("NewResolver failed")
		return err
	}

	entries := make(chan *zeroconf.ServiceEntry)
	go func(results <-chan *zeroconf.ServiceEntry) {
		var lastInfo api.NetworkMasterInfo
		var lastAddr string
		for entry := range results {
			info, addr, err := parseServiceInfo(entry)
			if err != nil {
				log.Debug().Err(err).Msg("Failed to parse service entry")
			} else {
				if info.String() != lastInfo.String() || addr != lastAddr {
					lastInfo = *info
					lastAddr = addr
					l.log.Info().Str("address", lastAddr).Msg("Network master change detected")
					l.cb(lastInfo, lastAddr)
				}
			}
		}
	}(entries)

	if err := resolver.Browse(ctx, "_nm._binkynet._tcp", "local.", entries); err != nil {
		log.Debug().Err(err).Msg("Browse failed")
		return err
	}
	<-ctx.Done()
	return nil
}

func parseServiceInfo(se *zeroconf.ServiceEntry) (*api.NetworkMasterInfo, string, error) {
	result := &api.NetworkMasterInfo{
		ApiPort: int32(se.Port),
		Secure:  true,
	}
	apiAddress := se.HostName
	if len(se.AddrIPv4) > 0 {
		apiAddress = se.AddrIPv4[0].String()
	} else if len(se.AddrIPv6) > 0 {
		apiAddress = se.AddrIPv6[0].String()
	}
	for _, t := range se.Text {
		parts := strings.SplitN(t, "=", 2)
		if len(parts) != 2 {
			continue
		}
		switch parts[0] {
		case "version":
			result.Version = parts[1]
		case "apiversion":
			result.ApiVersion = parts[1]
		case "secure":
			if b, err := strconv.ParseBool(parts[1]); err == nil {
				result.Secure = b
			}
		}
	}
	return result, apiAddress, nil
}
