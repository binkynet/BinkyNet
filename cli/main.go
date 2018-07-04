//    Copyright 2018 Ewout Prangsma
//
//    Licensed under the Apache License, Version 2.0 (the "License");
//    you may not use this file except in compliance with the License.
//    You may obtain a copy of the License at
//
//        http://www.apache.org/licenses/LICENSE-2.0
//
//    Unless required by applicable law or agreed to in writing, software
//    distributed under the License is distributed on an "AS IS" BASIS,
//    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//    See the License for the specific language governing permissions and
//    limitations under the License.

package main

import (
	"os"
	"strconv"

	"github.com/rs/zerolog"
	"github.com/spf13/cobra"

	"github.com/binkynet/BinkyNet/cli/mqtt"
	_ "github.com/binkynet/BinkyNet/discovery"
	_ "github.com/binkynet/BinkyNet/model"
	_ "github.com/binkynet/BinkyNet/mqp"
)

const (
	projectName = "bnet"
)

var (
	cliLog  = zerolog.New(os.Stdout)
	cmdMain = &cobra.Command{
		Use: projectName,
		Run: showUsage,
	}
	mqttOptions struct {
		mqtt.Config
		topicPrefix string
	}
)

func init() {
	f := cmdMain.PersistentFlags()

	defMqttHost := getEnv("MQTT_HOST", "mqtt.local")
	defMqttPort, _ := strconv.Atoi(getEnv("MQTT_PORT", "1883"))
	f.StringVar(&mqttOptions.Host, "mqtt-host", defMqttHost, "Hostname of MQTT server")
	f.IntVar(&mqttOptions.Port, "mqtt-port", defMqttPort, "Port of MQTT server")
	f.StringVar(&mqttOptions.UserName, "mqtt-user", "", "Username for authentication of MQTT server")
	f.StringVar(&mqttOptions.Password, "mqtt-password", "", "Password for authentication of MQTT server")
	f.StringVar(&mqttOptions.ClientID, "mqtt-clientid", projectName, "Client ID for MQTT server")
	f.StringVar(&mqttOptions.topicPrefix, "topic-prefix", "", "Prefix for MQTT topics")
}

func main() {
	cmdMain.Execute()
}

func showUsage(cmd *cobra.Command, args []string) {
	cmd.Usage()
}

func mustMQTTService() mqtt.Service {
	s, err := mqtt.NewService(mqttOptions.Config, cliLog.With().Str("component", "mqtt").Logger())
	if err != nil {
		cliLog.Fatal().Err(err).Msg("MQTT service creation failed")
	}
	return s
}

func getEnv(key string, defaultValue string) string {
	if x := os.Getenv(key); x != "" {
		return x
	}
	return defaultValue
}
