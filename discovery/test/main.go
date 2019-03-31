package main

import (
	"context"
	"os"

	api "github.com/binkynet/BinkyNet/apis/v1"
	"github.com/binkynet/BinkyNet/discovery"
	"github.com/rs/zerolog"
)

var (
	log = zerolog.New(zerolog.ConsoleWriter{Out: os.Stderr}).With().Timestamp().Logger()
)

func main() {
	nmListener := discovery.NewNetworkMasterListener(log, onChange)
	nmListener.Run(context.Background())
}

func onChange(info api.NetworkMasterInfo, apiAddress string) {

}
