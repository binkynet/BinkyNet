package model

// DevicePin identifies a hardware device and an index within that hardware address.
type DevicePin struct {
	// Unique identifier of the device that this connection refers to.
	DeviceID string `json:"device"`
	// Index on the device (1...)
	Index int `json:"index"`
}
