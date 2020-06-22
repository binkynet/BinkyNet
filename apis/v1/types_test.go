// Copyright 2020 Ewout Prangsma
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

package v1

import (
	"encoding/json"
	"testing"

	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"
)

func TestDevice(t *testing.T) {
	v1 := Device{
		Id:      "io1",
		Address: "0x20",
		Type:    DeviceTypeMCP23017,
	}
	encoded := `{ "id": "io1", "address": "0x20", "type": "mcp23017" }`
	var v2 Device
	err := json.Unmarshal([]byte(encoded), &v2)
	require.NoError(t, err)

	assert.Equal(t, v1, v2)
}

func TestDevicePin(t *testing.T) {
	v1 := DevicePin{
		DeviceId: "foo",
		Index:    3,
	}
	encoded, err := json.Marshal(v1)
	require.NoError(t, err)
	var v2 DevicePin
	err = json.Unmarshal(encoded, &v2)
	require.NoError(t, err)

	assert.Equal(t, v1, v2)
}

func TestObject(t *testing.T) {
	v1 := Object{
		Id:   "led1",
		Type: ObjectTypeBinaryOutput,
		Connections: []*Connection{
			{
				Key: "output",
				Pins: []*DevicePin{
					{
						DeviceId: "io1",
						Index:    9,
					},
				},
			},
		},
	}
	encoded := `{ "id": "led1", "type": "binary-output", "connections": [{ "key": "output", "pins": [{ "device": "io1", "index": 9 }] }] }`
	var v2 Object
	err := json.Unmarshal([]byte(encoded), &v2)
	require.NoError(t, err)

	assert.Equal(t, v1, v2)
}
