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
	"strings"

	"github.com/charmbracelet/lipgloss"
	"github.com/rs/zerolog"
)

// Styles defines the styles for the text logger.
type Styles struct {
	// Timestamp is the style for timestamps.
	Timestamp lipgloss.Style

	// Caller is the style for source caller.
	Caller lipgloss.Style

	// Prefix is the style for prefix.
	Prefix lipgloss.Style

	// Message is the style for messages.
	Message lipgloss.Style

	// Key is the style for keys.
	Key lipgloss.Style

	// Value is the style for values.
	Value lipgloss.Style

	// Separator is the style for separators.
	Separator lipgloss.Style

	// Levels are the styles for each level.
	Levels map[zerolog.Level]lipgloss.Style

	// Keys overrides styles for specific keys.
	Keys map[string]lipgloss.Style

	// Values overrides value styles for specific keys.
	Values map[string]lipgloss.Style
}

// DefaultStyles returns the default styles.
func DefaultStyles() *Styles {
	return &Styles{
		Timestamp: lipgloss.NewStyle(),
		Caller:    lipgloss.NewStyle().Faint(true),
		Prefix:    lipgloss.NewStyle().Bold(true).Faint(true),
		Message:   lipgloss.NewStyle(),
		Key:       lipgloss.NewStyle().Faint(true),
		Value:     lipgloss.NewStyle(),
		Separator: lipgloss.NewStyle().Faint(true),
		Levels: map[zerolog.Level]lipgloss.Style{
			zerolog.DebugLevel: lipgloss.NewStyle().
				SetString(strings.ToUpper(zerolog.DebugLevel.String())).
				Bold(true).
				MaxWidth(4).
				Foreground(lipgloss.Color("63")),
			zerolog.InfoLevel: lipgloss.NewStyle().
				SetString(strings.ToUpper(zerolog.InfoLevel.String())).
				Bold(true).
				MaxWidth(4).
				Foreground(lipgloss.Color("86")),
			zerolog.WarnLevel: lipgloss.NewStyle().
				SetString(strings.ToUpper(zerolog.WarnLevel.String())).
				Bold(true).
				MaxWidth(4).
				Foreground(lipgloss.Color("192")),
			zerolog.ErrorLevel: lipgloss.NewStyle().
				SetString(strings.ToUpper(zerolog.ErrorLevel.String())).
				Bold(true).
				MaxWidth(4).
				Foreground(lipgloss.Color("204")),
			zerolog.FatalLevel: lipgloss.NewStyle().
				SetString(strings.ToUpper(zerolog.FatalLevel.String())).
				Bold(true).
				MaxWidth(4).
				Foreground(lipgloss.Color("134")),
		},
		Keys:   map[string]lipgloss.Style{},
		Values: map[string]lipgloss.Style{},
	}
}
