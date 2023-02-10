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
	"time"

	"github.com/rs/zerolog"
)

// NetLogger send log messages over UDP.
type NetLogger struct {
	conn *net.UDPConn
	buf  chan netLogMsg
}

type netLogMsg struct {
	Level zerolog.Level
	Msg   []byte
}

// NewLogger constructs a new UDP logger
func NewLogger() (*NetLogger, error) {
	addr, err := net.ResolveUDPAddr("udp", logAddr)
	if err != nil {
		return nil, err
	}
	c, err := net.DialUDP("udp", nil, addr)
	if err != nil {
		return nil, err
	}
	l := &NetLogger{
		conn: c,
		buf:  make(chan netLogMsg, 64),
	}
	go l.run()
	return l, nil
}

const (
	logAddr = "224.6.3.1:9832"
)

var _ zerolog.LevelWriter = &NetLogger{}

// Write a std message
func (l *NetLogger) Write(p []byte) (int, error) {
	return l.WriteLevel(zerolog.InfoLevel, p)
}

// Write a message with given level
func (l *NetLogger) WriteLevel(level zerolog.Level, p []byte) (n int, err error) {
	select {
	case l.buf <- netLogMsg{Level: level, Msg: p}:
		return len(p), nil
	default:
		return 0, fmt.Errorf("Buffer full")
	}
}

// Write a message with given level
func (l *NetLogger) run() {
	buf := make([]byte, maxDatagramSize)
	for msg := range l.buf {
		buf[0] = byte(msg.Level)
		actualLen := copy(buf[1:], msg.Msg)
		l.conn.SetWriteDeadline(time.Now().Add(time.Second / 4))
		if _, err := l.conn.Write(buf[:1+actualLen]); err != nil {
			log.Printf("Write failed: %s\n", err)
		}
	}
}
