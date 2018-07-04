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
	"context"
	"strconv"

	"github.com/spf13/cobra"

	"github.com/binkynet/BinkyNet/cli/mqtt"
	_ "github.com/binkynet/BinkyNet/discovery"
	_ "github.com/binkynet/BinkyNet/model"
	"github.com/binkynet/BinkyNet/mqp"
)

var (
	cmdSet = &cobra.Command{
		Use: "set",
		Run: func(cmd *cobra.Command, args []string) {
			cmd.Usage()
		},
		PersistentPreRun: func(cmd *cobra.Command, args []string) {
			if setOptions.address == "" && len(args) > 0 {
				setOptions.address = args[0]
				args = args[1:]
			}
			if setOptions.value == "" && len(args) > 0 {
				setOptions.value = args[0]
				args = args[1:]
			}
			if setOptions.address == "" {
				cliLog.Fatal().Msg("Address missing")
			}
		},
	}
	cmdSetBinary = &cobra.Command{
		Use: "binary",
		Run: cmdSetBinaryRun,
	}
	cmdSetPower = &cobra.Command{
		Use: "power",
		Run: cmdSetPowerRun,
	}
	cmdSetSwitch = &cobra.Command{
		Use: "switch",
		Run: cmdSetSwitchRun,
	}

	setOptions struct {
		what    string
		address string
		value   string
	}
)

func init() {
	cmdMain.AddCommand(cmdSet)
	cmdSet.AddCommand(cmdSetBinary)
	cmdSet.AddCommand(cmdSetPower)
	cmdSet.AddCommand(cmdSetSwitch)

	f := cmdSet.PersistentFlags()
	f.StringVarP(&setOptions.address, "address", "a", "", "Address of object")
	f.StringVarP(&setOptions.value, "value", "v", "", "Value to set")
}

func newRequestMessageBase() mqp.MessageBase {
	return mqp.MessageBase{
		Mode: mqp.MessageModeRequest,
	}
}

func newRequestObjectMessageBase(address string) mqp.ObjectMessageBase {
	return mqp.ObjectMessageBase{
		MessageBase: newRequestMessageBase(),
		Address:     mqp.ObjectAddress(address),
	}
}

func newRequestGlobalMessageBase() mqp.GlobalMessageBase {
	return mqp.GlobalMessageBase{
		MessageBase: newRequestMessageBase(),
	}
}

func cmdSetPublishMessage(msg mqp.Message) {
	// Check address
	workerID, _, err := mqp.SplitAddress(mqp.ObjectAddress(setOptions.address))
	if err != nil {
		cliLog.Fatal().Err(err).Str("address", setOptions.address).Msg("Invalid address.")
	}

	mqs := mustMQTTService()
	ctx := context.Background()
	var topic string
	if msg.IsGlobal() {
		topic = mqp.CreateGlobalTopic(mqttOptions.topicPrefix)
	} else {
		topic = mqp.CreateObjectTopic(mqttOptions.topicPrefix, workerID, msg)
	}
	if err := mqs.Publish(ctx, msg, topic, mqtt.QosAsLeastOnce); err != nil {
		cliLog.Fatal().Err(err).Msg("Set failed")
	} else {
		cliLog.Debug().Interface("msg", msg).Msg("Published message")
	}
}

func cmdSetBinaryRun(cmd *cobra.Command, args []string) {
	boolValue, err := strconv.ParseBool(setOptions.value)
	if err != nil {
		cliLog.Fatal().Msg("Invalid value.")
	}
	msg := mqp.BinaryMessage{
		ObjectMessageBase: newRequestObjectMessageBase(setOptions.address),
		Value:             boolValue,
	}
	cmdSetPublishMessage(msg)
}

func cmdSetPowerRun(cmd *cobra.Command, args []string) {
	boolValue, err := strconv.ParseBool(setOptions.value)
	if err != nil {
		cliLog.Fatal().Msg("Invalid value.")
	}
	msg := mqp.PowerMessage{
		GlobalMessageBase: newRequestGlobalMessageBase(),
		Active:            boolValue,
	}
	cmdSetPublishMessage(msg)
}

func cmdSetSwitchRun(cmd *cobra.Command, args []string) {
	swDirValue := mqp.SwitchDirection(setOptions.value)
	if err := swDirValue.Validate(); err != nil {
		cliLog.Fatal().Msg("Invalid value.")
	}
	msg := mqp.SwitchMessage{
		ObjectMessageBase: newRequestObjectMessageBase(setOptions.address),
		Direction:         swDirValue,
	}
	cmdSetPublishMessage(msg)
}
