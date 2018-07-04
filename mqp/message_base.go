// Copyright 2018 Ewout Prangsma
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

package mqp

import "path"

// MessageBase contains fields included in all messages
type MessageBase struct {
	// ID of the sender of the message
	Sender string `json:"sender"`
	// Mode of this message: request or actual
	Mode MessageMode `json:"mode"`
}

// IsRequest returns true when the message has requested a specific state.
func (m MessageBase) IsRequest() bool {
	return m.Mode == MessageModeRequest
}

// IsActual returns true when the message informs of a specific actual state.
func (m MessageBase) IsActual() bool {
	return m.Mode == MessageModeActual
}

// MessageMode indicates that the message contains a request for a given change or an actual state value.
type MessageMode string

const (
	// MessageModeRequest indicates that a message contains a request for a given state
	MessageModeRequest MessageMode = "request"
	// MessageModeActual indicates that a message contains an actual state value
	MessageModeActual MessageMode = "actual"
)

// ObjectMessageBase contains fields included in all object messages
type ObjectMessageBase struct {
	MessageBase
	// Address (module/local)
	Address ObjectAddress `json:"address"`
}

// IsGlobal returns true when the message is sent on the global topic.
func (m ObjectMessageBase) IsGlobal() bool {
	return false
}

// GlobalMessageBase contains fields included in all global messages
type GlobalMessageBase struct {
	MessageBase
}

// IsGlobal returns true when the message is sent on the global topic.
func (m GlobalMessageBase) IsGlobal() bool {
	return true
}

// TopicSuffix returns the suffix for topic name used by the messages.
func (m GlobalMessageBase) TopicSuffix() string {
	return ""
}

// Message is the interface implemented by each type of message.
type Message interface {
	// TopicSuffix returns the suffix for topic name used by the message.
	// For messages that use the global topic, this function returns an empty string.
	TopicSuffix() string
	// IsGlobal returns true when the message is send on the global topic.
	IsGlobal() bool
	// IsRequest returns true when the message has requested a specific state.
	IsRequest() bool
	// IsActual returns true when the message informs of a specific actual state.
	IsActual() bool
}

// CreateObjectTopic creates an MQTT topic for the message being send to the local worker with given ID.
func CreateObjectTopic(topicPrefix, workerID string, msg Message) string {
	return path.Join(topicPrefix, workerID, msg.TopicSuffix())
}

// CreateGlobalTopic creates an MQTT topic for the message being send to the global topic.
func CreateGlobalTopic(topicPrefix string) string {
	return path.Join(topicPrefix, "global")
}
