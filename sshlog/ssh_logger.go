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

package sshlog

import (
	"bytes"
	"encoding/json"
	"fmt"
	"log"
	"slices"
	"sort"
	"strconv"
	"strings"
	"sync"

	tea "github.com/charmbracelet/bubbletea"
	"github.com/rs/zerolog"
)

type SSHLogger struct {
	mutex    sync.Mutex
	programs []*tea.Program
	styles   *Styles
}

var _ zerolog.LevelWriter = &SSHLogger{}

// NewSshLogger constructs a new ssh logger
func NewSshLogger() *SSHLogger {
	return &SSHLogger{
		styles: DefaultStyles(),
	}
}

func (sshl *SSHLogger) Write(p []byte) (n int, err error) {
	return sshl.WriteLevel(zerolog.InfoLevel, p)
}

func (sshl *SSHLogger) WriteLevel(level zerolog.Level, p []byte) (n int, err error) {
	sshl.mutex.Lock()
	defer sshl.mutex.Unlock()

	// Anything to sent output to?
	if len(sshl.programs) == 0 {
		return
	}

	// Format message
	formatted := sshl.styles.formatEntry(level, string(p))
	msg := logLineMsg{
		Level:     level,
		Formatted: formatted,
	}

	// Send formatted output to all sessions
	for _, p := range sshl.programs {
		p.Send(msg)
	}
	return n, err
}

func (sshl *SSHLogger) register(p *tea.Program) {
	sshl.mutex.Lock()
	defer sshl.mutex.Unlock()

	sshl.programs = append(sshl.programs, p)
}

func (sshl *SSHLogger) unregister(p *tea.Program) {
	sshl.mutex.Lock()
	defer sshl.mutex.Unlock()

	sshl.programs = slices.DeleteFunc(sshl.programs, func(s *tea.Program) bool {
		return s == p
	})
}

func (st *Styles) formatEntry(level zerolog.Level, line string) string {
	var evt map[string]interface{}
	d := json.NewDecoder(strings.NewReader(line))
	d.UseNumber()
	if err := d.Decode(&evt); err != nil {
		log.Printf("SSHLogger: Failed to parse log entry '%s': %s\n", line, err)
		return line
	}
	var buf bytes.Buffer
	keys := make([]string, 0, len(evt))
	for k := range evt {
		switch k {
		case zerolog.MessageFieldName, zerolog.TimestampFieldName, zerolog.LevelFieldName:
			// Skip
		default:
			keys = append(keys, k)
		}
	}
	sort.Strings(keys)
	// Level
	buf.WriteString(st.Levels[level].Render(level.String()))
	buf.WriteByte(' ')
	// Message
	if v, ok := evt[zerolog.MessageFieldName]; ok {
		buf.WriteString(st.Message.Render(fmt.Sprintf("%s", v)))
	}
	// Other key=value pairs
	for _, k := range keys {
		buf.WriteByte(' ')
		buf.WriteString(st.Key.Render(k))
		buf.WriteByte('=')
		v := evt[k]
		switch tv := v.(type) {
		case string:
			if needsQuote(tv) {
				buf.WriteString(strconv.Quote(st.Value.Render(tv)))
			} else {
				buf.WriteString(st.Value.Render(tv))
			}
		default:
			b, _ := json.Marshal(v)
			buf.WriteString(st.Value.Render(string(b)))
		}
	}
	return buf.String()
}

// needsQuote returns true when the string s should be quoted in output.
func needsQuote(s string) bool {
	for i := range s {
		if s[i] < 0x20 || s[i] > 0x7e || s[i] == ' ' || s[i] == '\\' || s[i] == '"' {
			return true
		}
	}
	return false
}
