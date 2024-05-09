// Copyright 2024 Ewout Prangsma
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
	"context"
	"fmt"
	"net"
	"sort"
	"strings"
	"time"

	"github.com/rs/zerolog"
	"golang.org/x/sync/errgroup"
)

// ServiceBroadcaster is a service that broadcasts service registrations
// continuous on all interfaces that match a given pattern.
// When interfaces change (e.g. joining new network), the broadcaster
// follows the change.
type ServiceBroadcaster struct {
	log         zerolog.Logger
	hostMask    string
	serviceType string
	info        ServiceInfo
}

// NewServiceBroadcaster creates and initializes a ServiceListener.
// If all is false, only changes in service info are reported.
// If all is true, all service info messages are reported.
// Parameters:
// - log: logger
// - hostMask: IPv4 mask for interfaces to select (defaults to '0.0.0.0')
// - serviceType: Type of service to register
// - info: Service info to broadcast
func NewServiceBroadcaster(log zerolog.Logger, hostMask, serviceType string, info ServiceInfo) *ServiceBroadcaster {
	if hostMask == "" {
		hostMask = "0.0.0.0"
	}
	return &ServiceBroadcaster{
		log:         log,
		hostMask:    hostMask,
		serviceType: serviceType,
		info:        info,
	}
}

// Run the broadcaster until the given context is canceled.
func (sb *ServiceBroadcaster) Run(ctx context.Context) error {
	log := sb.log.With().
		Str("hostMask", sb.hostMask).
		Str("serviceType", sb.serviceType).
		Logger()

	g, ctx := errgroup.WithContext(ctx)
	intfChanges := make(chan []net.Interface)
	g.Go(func() error {
		detectInterfaceChanges(ctx, log, sb.hostMask, intfChanges)
		return nil
	})
	g.Go(func() error {
		sb.broadcast(ctx, log, intfChanges)
		return nil
	})

	return g.Wait()
}

// broadcast keeps broadcasting the service in and restarts
// when changes in interfaces are detected.
func (sb *ServiceBroadcaster) broadcast(ctx context.Context, log zerolog.Logger, changes <-chan []net.Interface) {
	prevCancel := func() {
		// Nothing yet
	}
	for {
		// Wait for change or context cancelation
		sctx, cancel := context.WithCancel(ctx)
		var intfs []net.Interface
		select {
		case <-ctx.Done():
			// Context canceled
			prevCancel()
			cancel()
			return
		case intfs = <-changes:
			// Restart
			log.Info().Msg("Interface change detected, restarting registration")
			prevCancel()
		}
		prevCancel = cancel
		// Launch zeroconf server
		if len(intfs) > 0 {
			go func(ctx context.Context, intfs []net.Interface) {
				var ipAddrs []string
				var intfNames []string
				for _, intf := range intfs {
					intfNames = append(intfNames, intf.Name)
					if addrs, err := intf.Addrs(); err == nil {
						for _, addr := range addrs {
							if ip, _, err := net.ParseCIDR(addr.String()); err == nil && ip != nil && ip.To4() != nil {
								ipAddrs = append(ipAddrs, ip.String())
							}
						}
					}
				}
				sort.Strings(ipAddrs)
				log.Info().
					Strs("addrs", ipAddrs).
					Strs("interfaces", intfNames).
					Msg("Broadcasting service info")

				if err := registerServiceEntryOnInterfaces(ctx, sb.serviceType, sb.info, intfs); err != nil {
					log.Error().Err(err).
						Msg("registerServiceEntryOnInterfaces failed")
				} else {
					log.Debug().Msg("registerServiceEntryOnInterfaces finished")
				}
			}(sctx, intfs)
		}
	}
}

// detectInterfaceChanges keeps detecting changes in selected interfaces.
// When a change is detected, a entry in sent in the given channel.
func detectInterfaceChanges(ctx context.Context, log zerolog.Logger, hostMask string, changes chan []net.Interface) {
	defer close(changes)
	currentAddrs := ""
	delay := time.Millisecond * 10
	for {
		// Wait a bit
		select {
		case <-ctx.Done():
			// Context canceled
			return
		case <-time.After(delay):
			// Continue
		}
		// Select interfaces
		intfs, err := selectInterfaces(hostMask)
		if err != nil {
			log.Warn().Err(err).Msg("Failed to select interfaces")
			delay = time.Second * 10
			continue
		}
		// Find IP addresses of selected interfaces
		var allAddrs []string
		for _, intf := range intfs {
			if addrs, err := intf.Addrs(); err != nil {
				log.Warn().Err(err).
					Str("interface", intf.Name).
					Msg("Failed to get addresses of interfaces")
			} else {
				for _, addr := range addrs {
					allAddrs = append(allAddrs, addr.String())
				}
			}
		}
		sort.Strings(allAddrs)
		newAddrs := strings.Join(allAddrs, ",")
		if currentAddrs != newAddrs {
			// Change detected
			currentAddrs = newAddrs
			changes <- intfs
		}
		delay = time.Second * 2
	}
}

// selectInterfaces finds all network interfaces for which
// and address matches the given host IP.
func selectInterfaces(hostMask string) ([]net.Interface, error) {
	// Parse host address
	hostIP := net.ParseIP(hostMask)
	if hostIP == nil {
		return nil, fmt.Errorf("failed to parse host address: '%s'", hostMask)
	}

	matchesHostIP := func(ip net.IP) bool {
		// Find matching addresses
		for maskBits := 32; maskBits >= 0; maskBits-- {
			mask := net.CIDRMask(maskBits, 32) // Assume IPv4
			masked := ip.Mask(mask)
			if masked.Equal(hostIP) {
				// Found a good match
				return true
			}
		}
		return false
	}

	// Collect suitable interface addresses
	intfs, err := net.Interfaces()
	if err != nil {
		return nil, fmt.Errorf("failed to fetch network interfaces: %w", err)
	}
	var selectedIFaces []net.Interface
	for _, intf := range intfs {
		if intf.Flags&net.FlagUp == 0 {
			continue
		}
		if intf.Flags&net.FlagLoopback != 0 {
			continue
		}
		if addrs, err := intf.Addrs(); err == nil {
			for _, addr := range addrs {
				if ip, _, err := net.ParseCIDR(addr.String()); err == nil && ip != nil && ip.To4() != nil {
					if !ip.IsLinkLocalUnicast() && matchesHostIP(ip) {
						selectedIFaces = append(selectedIFaces, intf)
						break
					}
				}
			}
		}
	}

	if len(selectedIFaces) == 0 && hostMask != "0.0.0.0" {
		return nil, fmt.Errorf("Did not find interface with address '%s'", hostMask)
	}
	return selectedIFaces, nil
}
