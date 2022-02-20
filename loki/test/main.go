package main

import (
	"log"
	"time"

	"github.com/binkynet/BinkyNet/loki"
	"github.com/rs/zerolog"
)

func main() {
	lw, err := loki.NewLokiLogger("http://localhost:3100", "testapp")
	if err != nil {
		log.Fatalf("NewLokiLogger failed: %s\n", err)
	}
	log := zerolog.New(lw).With().Timestamp().Logger()

	log.Debug().Msg("Hello logger")
	for i := 0; i < 50; i++ {
		go func(i int) {
			log.Info().Int("i", i).Msgf("Message %d", i)
		}(i)
	}
	time.Sleep(time.Second * 5)
}
