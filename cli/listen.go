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
	"encoding/json"
	"sync"

	"github.com/spf13/cobra"

	_ "github.com/binkynet/BinkyNet/discovery"
	_ "github.com/binkynet/BinkyNet/model"
	"github.com/binkynet/BinkyNet/mqp"
	"github.com/binkynet/BinkyNet/mqtt"
)

var (
	cmdListen = &cobra.Command{
		Use: "listen",
		Run: func(cmd *cobra.Command, args []string) {
			cmd.Usage()
		},
		PersistentPreRun: func(cmd *cobra.Command, args []string) {
			listenOptions.workerIDs = append(listenOptions.workerIDs, args...)
		},
	}
	cmdListenBinary = &cobra.Command{
		Use: "binary",
		Run: cmdListenBinaryRun,
	}
	cmdListenPower = &cobra.Command{
		Use: "power",
		Run: cmdListenPowerRun,
	}
	cmdListenSwitch = &cobra.Command{
		Use: "switch",
		Run: cmdListenSwitchRun,
	}

	listenOptions struct {
		workerIDs []string
	}
)

func init() {
	cmdMain.AddCommand(cmdListen)
	cmdListen.AddCommand(cmdListenBinary)
	cmdListen.AddCommand(cmdListenPower)
	cmdListen.AddCommand(cmdListenSwitch)

	f := cmdListen.PersistentFlags()
	f.StringSliceVarP(&listenOptions.workerIDs, "address", "a", nil, "Worker IDs to listen for")
}

func cmdListenForMessages(msgBuilder func() interface{}) {
	mqs := mustMQTTService()
	defer func() {
		mqs.Close()
	}()
	ctx := context.Background()
	msg := msgBuilder().(mqp.Message)
	if msg.IsGlobal() {
		listenOptions.workerIDs = []string{"global"}
	}
	wg := sync.WaitGroup{}
	for _, workerID := range listenOptions.workerIDs {
		wg.Add(1)
		go func(workerID string) {
			defer wg.Done()
			var topic string
			if msg.IsGlobal() {
				topic = mqp.CreateGlobalTopic(mqttOptions.topicPrefix, msg)
			} else {
				topic = mqp.CreateObjectTopic(mqttOptions.topicPrefix, workerID, msg)
			}
			subscr, err := mqs.Subscribe(ctx, topic, mqtt.QosDefault)
			if err != nil {
				cliLog.Fatal().Err(err).Msg("Subscribe failed")
			}
			defer subscr.Close()
			cliLog.Info().Msgf("Listening on %s", topic)
			for {
				msgI := msgBuilder()
				cliLog.Info().Msgf("Next on %s", topic)
				msgID, err := subscr.NextMsg(ctx, &msgI)
				if err != nil {
					cliLog.Fatal().Err(err).Msg("NextMsg failed")
				}
				encoded, _ := json.Marshal(msgI)
				cliLog.Info().Int("id", msgID).Msgf("Received: %s", string(encoded))
			}
		}(workerID)
	}
	wg.Wait()
}

func cmdListenBinaryRun(cmd *cobra.Command, args []string) {
	cmdListenForMessages(func() interface{} { return mqp.BinaryMessage{} })
}

func cmdListenPowerRun(cmd *cobra.Command, args []string) {
	cmdListenForMessages(func() interface{} { return mqp.PowerMessage{} })
}

func cmdListenSwitchRun(cmd *cobra.Command, args []string) {
	cmdListenForMessages(func() interface{} { return mqp.SwitchMessage{} })
}
