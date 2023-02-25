module github.com/binkynet/BinkyNet

go 1.15

require (
	github.com/davecgh/go-spew v1.1.0
	github.com/gogo/protobuf v1.3.1
	github.com/golang/protobuf v1.3.4
	github.com/grandcat/zeroconf v1.0.0
	github.com/pmezard/go-difflib v1.0.0
	github.com/rs/zerolog v1.18.0
	github.com/stretchr/testify v1.6.1
	golang.org/x/crypto v0.1.0 // indirect
	golang.org/x/net v0.1.0
	golang.org/x/sys v0.1.0
	golang.org/x/text v0.4.0
	google.golang.org/grpc v1.27.1
	gopkg.in/yaml.v3 v3.0.0-20200313102051-9f266ea9e77c
)

replace github.com/coreos/go-systemd => github.com/coreos/go-systemd v0.0.0-20190620071333-e64a0ec8b42a
