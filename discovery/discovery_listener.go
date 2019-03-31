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
	"net"
	"strconv"

	api "github.com/binkynet/BinkyNet/apis/v1"
	"github.com/rs/zerolog"
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
	addr := net.UDPAddr{
		Port: int(api.Ports_DISCOVERY),
		IP:   net.IPv4(0, 0, 0, 0),
	}
	conn, err := net.ListenUDP("udp4", &addr) // code does not block here
	if err != nil {
		return err
	}
	defer conn.Close()
	data := make([]byte, 4096)
	var lastInfo api.NetworkMasterInfo
	for {
		l.log.Debug().Msg("Reading...")
		n, remoteAddr, err := conn.ReadFromUDP(data)
		l.log.Debug().
			Int("n", n).
			Str("remoteAddr", remoteAddr.String()).
			Msg("Read msg...")
		if err != nil {
			if ctx.Err() != nil {
				return nil
			}
			l.log.Error().Err(err).Msg("Failed to read")
		} else {
			var msg api.NetworkMasterInfo
			if err := msg.Unmarshal(data[:n]); err != nil {
				l.log.Error().Err(err).Msg("Failed to unmarshal NetworkMasterInfo message")
				continue
			}
			if lastInfo.String() != msg.String() {
				// Change detected
				address := net.JoinHostPort(remoteAddr.IP.String(), strconv.Itoa(int(msg.GetApiPort())))
				l.log.Info().Str("address", address).Msg("Network master change detected")
				lastInfo = msg
				// Invoke callback
				l.cb(msg, address)
			}
		}
	}
}
