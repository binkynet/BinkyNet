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
	"strings"

	"github.com/charmbracelet/bubbles/viewport"
	tea "github.com/charmbracelet/bubbletea"
	"github.com/rs/zerolog"
)

type sshTeaModel struct {
	width           int
	height          int
	logLines        logLineMsgs
	viewport        viewport.Model
	ready           bool
	minimumLogLevel zerolog.Level
}

const (
	maxLines = 1024
)

// Single log line entry
type logLineMsg struct {
	Level     zerolog.Level
	Formatted string
}

// List of log line entries
type logLineMsgs []logLineMsg

// Render the content of the given lines
func (msgs logLineMsgs) Render(minimumLogLevel zerolog.Level) string {
	buf := bytes.Buffer{}
	for _, msg := range msgs {
		if msg.Level >= minimumLogLevel && msg.Formatted != "" {
			buf.WriteString(msg.Formatted)
			buf.WriteByte('\n')
		}
	}
	return buf.String()
}

func (m *sshTeaModel) Init() tea.Cmd {
	return nil
}

func (m *sshTeaModel) Update(msg tea.Msg) (tea.Model, tea.Cmd) {
	var cmd tea.Cmd
	var cmds []tea.Cmd

	switch msg := msg.(type) {
	case tea.WindowSizeMsg:
		m.height = msg.Height
		m.width = msg.Width
		footerHeight := 1
		if !m.ready {
			// Since this program is using the full size of the viewport we
			// need to wait until we've received the window dimensions before
			// we can initialize the viewport. The initial dimensions come in
			// quickly, though asynchronously, which is why we wait for them
			// here.
			m.viewport = viewport.New(msg.Width, msg.Height-footerHeight)
			m.viewport.YPosition = 0
			m.viewport.SetContent(m.logLines.Render(m.minimumLogLevel))
			m.ready = true
		} else {
			m.viewport.Width = msg.Width
			m.viewport.Height = msg.Height - footerHeight
		}

	case tea.KeyMsg:
		switch msg.String() {
		case "q", "ctrl+c":
			return m, tea.Quit
		case "d", "D":
			m.minimumLogLevel = zerolog.DebugLevel
			m.viewport.SetContent(m.logLines.Render(m.minimumLogLevel))
			return m, nil
		case "i", "I":
			m.minimumLogLevel = zerolog.InfoLevel
			m.viewport.SetContent(m.logLines.Render(m.minimumLogLevel))
			return m, nil
		case "w", "W":
			m.minimumLogLevel = zerolog.WarnLevel
			m.viewport.SetContent(m.logLines.Render(m.minimumLogLevel))
			return m, nil
		case "e", "E":
			m.minimumLogLevel = zerolog.ErrorLevel
			m.viewport.SetContent(m.logLines.Render(m.minimumLogLevel))
			return m, nil
		case "t", "T":
			m.minimumLogLevel = zerolog.TraceLevel
			m.viewport.SetContent(m.logLines.Render(m.minimumLogLevel))
			return m, nil
		}

	case logLineMsg:
		if msg.Level >= m.minimumLogLevel {
			if m.logLines == nil {
				m.logLines = make(logLineMsgs, maxLines)
			} else {
				if len(m.logLines) > 0 {
					copy(m.logLines[1:], m.logLines)
				}
			}
			m.logLines[0] = msg
			m.viewport.SetContent(m.logLines.Render(m.minimumLogLevel))
		}
	}

	// Handle keyboard and mouse events in the viewport
	m.viewport, cmd = m.viewport.Update(msg)
	cmds = append(cmds, cmd)

	return m, tea.Batch(cmds...)
}

func (m *sshTeaModel) View() string {
	footer := strings.ToUpper(m.minimumLogLevel.String()) + " (D)ebug (I)nfo (W)arning E(rror)"
	return m.viewport.View() + "\n" + footer
}
