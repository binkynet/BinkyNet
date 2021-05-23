// Copyright 2021 Ewout Prangsma
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

package netlog

import (
	"fmt"
	"log"
	"net"

	"github.com/rs/zerolog"
)

// NetLogReceiver receives log messages over UDP.
type NetLogReceiver struct {
	conns []*net.UDPConn
}

type NetLogMessage struct {
	Level   zerolog.Level
	Message []byte
	Address string
}

type NetLogCallback func(NetLogMessage)

const (
	maxDatagramSize = 8192
)

// NewLogReceiver constructs a new UDP log receiver
func NewLogReceiver(cb NetLogCallback) (*NetLogReceiver, error) {
	addr, err := net.ResolveUDPAddr("udp", logAddr)
	if err != nil {
		return nil, err
	}
	r := &NetLogReceiver{}
	itfs, err := net.Interfaces()
	if err != nil {
		return nil, err
	}
	expectedFlags := net.FlagMulticast | net.FlagUp
	for _, itf := range itfs {
		if itf.Flags&expectedFlags == expectedFlags {
			fmt.Printf("Interface: %s\n", itf.Name)
			c, err := net.ListenMulticastUDP("udp", &itf, addr)
			if err != nil {
				fmt.Printf("Cannot listen on %s: %s\n", itf.Name, err)
				continue
			}
			c.SetReadBuffer(maxDatagramSize)
			r.conns = append(r.conns, c)
			go r.run(c, cb)

		}
	}
	return r, nil
}

func (r *NetLogReceiver) run(conn *net.UDPConn, cb NetLogCallback) {
	b := make([]byte, maxDatagramSize)
	for {
		n, addr, err := conn.ReadFromUDP(b)
		if err != nil {
			log.Fatal("ReadFromUDP failed:", err)
		} else if n > 0 {
			cb(NetLogMessage{
				Level:   zerolog.Level(b[0]),
				Message: b[1:n],
				Address: addr.String(),
			})
		}
	}
}
