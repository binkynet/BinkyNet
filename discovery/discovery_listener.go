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

	"github.com/grandcat/zeroconf"
	"github.com/rs/zerolog"

	api "github.com/binkynet/BinkyNet/apis/v1"
)

// ServiceListener is a service that listens for service registrations for
// a specific type of service.
type ServiceListener struct {
	log         zerolog.Logger
	serviceType string
	all         bool
	cb          ServiceChangedCallback
}

// ServiceChangedCallback is type for callbacks a service change
// has been detected.
type ServiceChangedCallback func(info api.ServiceInfo)

// NewServiceListener creates and initializes a ServiceListener.
// If all is false, only changes in service info are reported.
// If all is true, all service info messages are reported.
func NewServiceListener(log zerolog.Logger, serviceType string, all bool, cb ServiceChangedCallback) *ServiceListener {
	return &ServiceListener{
		log:         log,
		serviceType: serviceType,
		all:         all,
		cb:          cb,
	}
}

// Run the listener until the given context is canceled.
func (l *ServiceListener) Run(ctx context.Context) error {
	log := l.log.With().Str("serviceType", l.serviceType).Logger()
	resolver, err := zeroconf.NewResolver(nil)
	if err != nil {
		log.Debug().Err(err).Msg("NewResolver failed")
		return err
	}

	entries := make(chan *zeroconf.ServiceEntry)
	go func(results <-chan *zeroconf.ServiceEntry) {
		var lastInfo api.ServiceInfo
		for entry := range results {
			info, err := api.ParseServiceInfo(entry)
			if err != nil {
				log.Debug().Err(err).Msg("Failed to parse service entry")
			} else {
				if l.all || info.String() != lastInfo.String() {
					lastInfo = *info
					l.log.Info().
						Str("service", entry.Service).
						Str("address", info.GetApiAddress()).
						Int32("port", info.GetApiPort()).
						Str("version", info.GetApiVersion()).
						Msg("Service change detected")
					l.cb(lastInfo)
				}
			}
		}
	}(entries)

	if err := resolver.Browse(ctx, l.serviceType, "local.", entries); err != nil {
		log.Debug().Err(err).Msg("Browse failed")
		return err
	}
	<-ctx.Done()
	return nil
}
