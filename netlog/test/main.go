package main

import (
	"fmt"
	"log"
	"strings"
	"time"

	"github.com/binkynet/BinkyNet/netlog"
	"github.com/rs/zerolog"
)

func main() {
	_, err := netlog.NewLogReceiver(func(msg netlog.NetLogMessage) {
		fmt.Printf("Level=%s Address=%s Msg=%s\n", msg.Level.String(), msg.Address, strings.TrimSpace(string(msg.Message)))
	})
	if err != nil {
		log.Fatalf("NewLogReceiver failed: %s\n", err)
	}

	netLog, err := netlog.NewLogger()
	if err != nil {
		log.Fatalf("NewLogger failed: %s\n", err)
	}
	log := zerolog.New(zerolog.ConsoleWriter{Out: netLog}).With().Timestamp().Logger()

	log.Debug().Msg("Hello logger")
	for i := 0; i < 50; i++ {
		go func(i int) {
			log.Info().Int("i", i).Msgf("Message %d", i)
		}(i)
	}
	time.Sleep(time.Second * 5)
}
