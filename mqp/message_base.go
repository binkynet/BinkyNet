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

// NewMessageBase returns a new MessageBase with given values.
func NewMessageBase(sender string, mode MessageMode) MessageBase {
	return MessageBase{
		Sender: sender,
		Mode:   mode,
	}
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

// NewObjectMessageBase returns a new ObjectMessageBase with given values.
func NewObjectMessageBase(sender string, mode MessageMode, address ObjectAddress) ObjectMessageBase {
	return ObjectMessageBase{
		MessageBase: NewMessageBase(sender, mode),
		Address:     address,
	}
}

// IsGlobal returns true when the message is sent on the global topic.
func (m ObjectMessageBase) IsGlobal() bool {
	return false
}

// GlobalMessageBase contains fields included in all global messages
type GlobalMessageBase struct {
	MessageBase
}

// NewGlobalMessageBase returns a new GlobalMessageBase with given values.
func NewGlobalMessageBase(sender string, mode MessageMode) GlobalMessageBase {
	return GlobalMessageBase{
		MessageBase: NewMessageBase(sender, mode),
	}
}

// IsGlobal returns true when the message is sent on the global topic.
func (m GlobalMessageBase) IsGlobal() bool {
	return true
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
func CreateGlobalTopic(topicPrefix string, msg Message) string {
	return path.Join(topicPrefix, "global", msg.TopicSuffix())
}
