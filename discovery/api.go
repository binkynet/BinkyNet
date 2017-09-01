package discovery

const (
	// DefaultPort number used by the discovery service.
	DefaultPort = 18512
)

// RegisterWorkerMessage is the JSON message send over UDP from the Local Worker
// to the Network Manager to register itself.
type RegisterWorkerMessage struct {
	// Unique ID of the worker
	ID string `json:"id"`
	// HTTP(s) server port of the worker
	Port int `json:"port"`
	// Set if worker is using HTTPS.
	Secure bool `json:"secure"`
}

// WorkerEnvironment is the JSON messages POST'ed to the Local Worker
// at http[s]://<ip>:<port>/environment.
// This call is made by the Network Manager after the worker
// has registered itself or the environment changes.
type WorkerEnvironment struct {
	// LocalWorker version (semver) that is expected.
	// If the actual version is different, the LocalWorker must update
	// itself.
	RequiredWorkerVersion string `json:"required-worker-version"`
	// Mqtt connection information
	Mqtt struct {
		// MQTT server host
		Host string `json:"host"`
		// MQTT server port
		Port int `json:"port"`
		// MQTT user name for authentication
		UserName string `json:"user,omitempty"`
		// MQTT password for authentication
		Password string `json:"password,omitempty"`
		// Name of MQTT topic the local worker should listen on for its runtime control messages
		ControlTopic string `json:"control-topic"`
		// Name of MQTT topic the local worker should publish event data on
		DataTopic string `json:"data-topic"`
	} `json:"mqtt"`
}
