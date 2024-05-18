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
	tea "github.com/charmbracelet/bubbletea"
	"github.com/charmbracelet/ssh"
)

// You can wire any Bubble Tea model up to the middleware with a function that
// handles the incoming ssh.Session. Here we just grab the terminal info and
// pass it to the new model. You can also return tea.ProgramOptions (such as
// tea.WithAltScreen) on a session by session basis.
func (sshl *SSHLogger) TeaHandler(s ssh.Session) (tea.Model, []tea.ProgramOption) {
	// This should never fail, as we are using the activeterm middleware.
	pty, _, _ := s.Pty()

	m := &sshTeaModel{
		width:  pty.Window.Width,
		height: pty.Window.Height,
	}

	return m, []tea.ProgramOption{
		tea.WithAltScreen(),
		sshl.WithConnectProgram(),
	}
}

// WithConnectProgram generates a tea ProgramOption that hooks the program
// into the SSH logger.
func (sshl *SSHLogger) WithConnectProgram() func(*tea.Program) {
	return func(p *tea.Program) {
		sshl.register(p)
		go func() {
			p.Wait()
			sshl.unregister(p)
		}()
	}
}
