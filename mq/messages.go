package mq

import "fmt"

// MessageBase contains fields included in all messages
type MessageBase struct {
	// ID of the sender of the message
	Sender string `json:"sender"`
}

// LocRequest is send by controlling application to track
// to control speed & functions of a specific loc.
type LocRequest struct {
	MessageBase
	// Address (module/local)
	Address ObjectAddress `json:"address"`
	// Speed in steps
	Speed int `json:"speed"`
	// Maximum speed steps of this loc
	SpeedSteps int `json:"speedSteps"`
	// Direction "forward|reverse"
	Direction string `json:"direction"`
	// State of functions
	Functions map[int]bool `json:"functions"`
}

// TopicSuffix returns the suffix for topic name used by LocRequest messages.
func (l LocRequest) TopicSuffix() string {
	return "loc"
}

// PowerRequest is send by controlling application to track
// to control power supply to the track.
type PowerRequest struct {
	MessageBase
	// Activate indicates power on/off
	Active bool `json:"active"`
}

// TopicSuffix returns the suffix for topic name used by PowerRequest messages.
func (l PowerRequest) TopicSuffix() string {
	return "power"
}

// PowerFeedback is send by the track to indicate actual change in power status.
type PowerFeedback struct {
	MessageBase
	// Activate indicates power on/off
	Active bool `json:"active"`
}

// TopicSuffix returns the suffix for topic name used by PowerFeedback messages.
func (l PowerFeedback) TopicSuffix() string {
	return "power-feedback"
}

// BinaryOutputRequest is send by controlling application to track
// to control the value of a binary output.
type BinaryOutputRequest struct {
	MessageBase
	// Address (module/local)
	Address ObjectAddress `json:"address"`
	// Value of the binary output on/off
	Value bool `json:"value"`
}

// TopicSuffix returns the suffix for topic name used by BinaryOutputRequest messages.
func (l BinaryOutputRequest) TopicSuffix() string {
	return "binary-output"
}

// BinaryOutputFeedback is send by the track to indicate actual change output value.
type BinaryOutputFeedback struct {
	MessageBase
	// Address (module/local)
	Address ObjectAddress `json:"address"`
	// Value of the binary output on/off
	Value bool `json:"value"`
}

// TopicSuffix returns the suffix for topic name used by BinaryOutputFeedback messages.
func (l BinaryOutputFeedback) TopicSuffix() string {
	return "binary-output-feedback"
}

// BinarySensorFeedback is send by the track to indicate the value of a binary sensor.
type BinarySensorFeedback struct {
	MessageBase
	// Address (module/local)
	Address ObjectAddress `json:"address"`
	// Value of the binary sensor on/off
	Value bool `json:"value"`
}

// TopicSuffix returns the suffix for topic name used by BinarySensorFeedback messages.
func (l BinarySensorFeedback) TopicSuffix() string {
	return "binary-sensor-feedback"
}

type SwitchDirection string

const (
	SwitchDirectionStraight = SwitchDirection("straight")
	SwitchDirectionOff      = SwitchDirection("off")
)

func (s SwitchDirection) Validate() error {
	switch string(s) {
	case "straight", "off":
		return nil
	default:
		return fmt.Errorf("unknown switch direction '%s'", string(s))
	}
}

// SwitchRequest is send by controlling application to track
// to control the value of a binary output.
type SwitchRequest struct {
	MessageBase
	// Address (module/local)
	Address ObjectAddress `json:"address"`
	// Direction of the switch "straight|off"
	Direction SwitchDirection `json:"direction"`
}

// TopicSuffix returns the suffix for topic name used by SwitchRequest messages.
func (l SwitchRequest) TopicSuffix() string {
	return "switch"
}

// SwitchFeedback is send by the track to indicate actual change in switch direction.
type SwitchFeedback struct {
	MessageBase
	// Address (module/local)
	Address ObjectAddress `json:"address"`
	// Direction of the switch "straight|off"
	Direction SwitchDirection `json:"direction"`
}

// TopicSuffix returns the suffix for topic name used by BinaryOutputFeedback messages.
func (l SwitchFeedback) TopicSuffix() string {
	return "switch-feedback"
}

// Close4StageRequest is send by controlling application to the track to update
// the time of day.
type Close4StageRequest struct {
	MessageBase
	// Period of day "morning|afternoon|evening|night"
	Period string `json:"period"`
}

// TopicSuffix returns the suffix for topic name used by Close4StageRequest messages.
func (l Close4StageRequest) TopicSuffix() string {
	return "close-4-stage"
}
