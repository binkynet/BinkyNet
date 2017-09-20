//    Copyright 2017 Ewout Prangsma
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
	"context"
	"path"
	"strconv"

	"github.com/spf13/cobra"

	"github.com/binkynet/BinkyNet/cli/mqtt"
	_ "github.com/binkynet/BinkyNet/discovery"
	_ "github.com/binkynet/BinkyNet/model"
	"github.com/binkynet/BinkyNet/mq"
)

var (
	cmdSet = &cobra.Command{
		Use: "set",
		Run: cmdSetRun,
	}

	setOptions struct {
		what    string
		address string
		value   string
	}
)

func init() {
	cmdMain.AddCommand(cmdSet)

	f := cmdSet.Flags()
	f.StringVarP(&setOptions.what, "type", "t", "", "Type of object to set")
	f.StringVarP(&setOptions.address, "address", "a", "", "Address of object")
	f.StringVarP(&setOptions.value, "value", "v", "", "Value to set")
}

func cmdSetRun(cmd *cobra.Command, args []string) {
	if setOptions.what == "" && len(args) > 0 {
		setOptions.what = args[0]
		args = args[1:]
	}
	if setOptions.address == "" && len(args) > 0 {
		setOptions.address = args[0]
		args = args[1:]
	}
	if setOptions.value == "" && len(args) > 0 {
		setOptions.value = args[0]
		args = args[1:]
	}

	// Check address
	if setOptions.address == "" {
		cliLog.Fatal().Msg("Address missing")
	}

	mqs := mustMQTTService()
	ctx := context.Background()
	var err error
	switch setOptions.what {
	case "binary-output":
		boolValue, err := strconv.ParseBool(setOptions.value)
		if err != nil {
			cliLog.Fatal().Msg("Invalid value.")
		}
		msg := mq.BinaryOutputRequest{
			Address: setOptions.address,
			Value:   boolValue,
		}
		topic := path.Join(mqttOptions.topicPrefix, msg.TopicSuffix())
		err = mqs.Publish(ctx, msg, topic, mqtt.QosAsLeastOnce)
		cliLog.Debug().Interface("msg", msg).Msg("Published message")
	default:
		cliLog.Fatal().Msgf("Unknown type '%s'", setOptions.what)
	}

	if err != nil {
		cliLog.Fatal().Err(err).Msg("Set failed")
	}
}
