PROJECT := BinkyNet
ROOTDIR := $(shell pwd)
VERSION := $(shell cat VERSION)
COMMIT := $(shell git rev-parse --short HEAD)
BUILDIMAGE := binkynet-apis-build
CACHEVOL := binkynet-apis-gocache
MODVOL := binkynet-apis-pkg-mod
BINDIR := $(ROOTDIR)

ORGPATH := github.com/binkynet
REPONAME := $(PROJECT)
REPOPATH := $(ORGPATH)/$(REPONAME)
BINNAME := bnet
BIN := $(BINDIR)/$(BINNAME)

ifndef GOOS
	GOOS := $(shell go env GOOS)
endif
ifndef GOARCH
	GOARCH := $(shell go env GOARCH)
endif

DOCKERARGS := run -t --rm \
	-u $(shell id -u):$(shell id -g) \
	-v $(ROOTDIR):/go/src/$(REPOPATH) \
	-v $(CACHEVOL):/usr/gocache \
	-v $(MODVOL):/go/pkg/mod \
	-e GOCACHE=/usr/gocache \
	-e CGO_ENABLED=0 \
	-e GO111MODULE=off \
	-w /go/src/$(REPOPATH) \
	$(BUILDIMAGE)

DOCKERENV := docker $(DOCKERARGS)

SOURCES := $(shell find . -name '*.go')
APISOURCES := $(shell find apis -name '*.proto')
APIGENSOURCES := $(shell find apis -name '*.go')

.PHONY: all clean deps compile

all: compile

clean:
	rm -Rf $(BIN) $(GOBUILDDIR)

local:
	@${MAKE} -B GOOS=$(shell go env GOHOSTOS) GOARCH=$(shell go env GOHOSTARCH) $(BIN)

compile: $(SOURCES)
	go build -mod=readonly ./...

# Build docker builder image
.PHONY: build-image
build-image:
	docker build \
		-t $(BUILDIMAGE) \
		-f apis/Dockerfile.build apis 

.PHONY: $(CACHEVOL)
$(CACHEVOL):
	@docker volume create $(CACHEVOL)
	docker run -it 	--rm -v $(CACHEVOL):/usr/gocache \
		$(BUILDIMAGE) \
		chown -R $(shell id -u):$(shell id -g) /usr/gocache

.PHONY: $(MODVOL)
$(MODVOL):
	@docker volume create $(MODVOL)
	docker run -it 	--rm -v $(MODVOL):/go/pkg/mod \
		$(BUILDIMAGE) \
		chown -R $(shell id -u):$(shell id -g) /go/pkg/mod

# Generate go code for k8s types & proto files
.PHONY: generate
generate: $(CACHEVOL) $(MODVOL)
	$(DOCKERENV) go generate ./...
