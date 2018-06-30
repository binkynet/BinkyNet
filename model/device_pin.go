package model

// DeviceIndex is an address local to a device.
// Range 1..
type DeviceIndex uint

// DevicePin identifies a hardware device and an index within that hardware address.
type DevicePin struct {
	// Unique identifier of the device that this connection refers to.
	DeviceID DeviceID `json:"device"`
	// Index on the device (1...)
	Index DeviceIndex `json:"index"`
}
