PROJECT := BinkyNet
ROOTDIR := $(shell pwd)
VERSION := $(shell cat VERSION)
COMMIT := $(shell git rev-parse --short HEAD)

GOBUILDDIR := $(ROOTDIR)/.gobuild
BINDIR := $(ROOTDIR)
VENDORDIR := $(ROOTDIR)/vendor

ORGPATH := github.com/binkynet
ORGDIR := $(GOBUILDDIR)/src/$(ORGPATH)
REPONAME := $(PROJECT)
REPODIR := $(ORGDIR)/$(REPONAME)
REPOPATH := $(ORGPATH)/$(REPONAME)
BINNAME := bnet
BIN := $(BINDIR)/$(BINNAME)

GOPATH := $(GOBUILDDIR)
GOVERSION := 1.9.0-alpine

ifndef GOOS
	GOOS := $(shell go env GOOS)
endif
ifndef GOARCH
	GOARCH := $(shell go env GOARCH)
endif

SOURCES := $(shell find . -name '*.go')

.PHONY: all clean deps

all: $(BIN)

clean:
	rm -Rf $(BIN) $(GOBUILDDIR)

deps:
	@${MAKE} -B -s .gobuild

local:
	@${MAKE} -B GOOS=$(shell go env GOHOSTOS) GOARCH=$(shell go env GOHOSTARCH) $(BIN)

.gobuild:
	@mkdir -p $(ORGDIR)
	@pulsar go path -p $(REPOPATH)
	@GOPATH=$(GOPATH) pulsar go flatten -V $(VENDORDIR)

$(BIN): .gobuild $(SOURCES)
	docker run \
		--rm \
		-v $(ROOTDIR):/usr/code \
		-e GOPATH=/usr/code/.gobuild \
		-e GOOS=$(GOOS) \
		-e GOARCH=$(GOARCH) \
		-e CGO_ENABLED=0 \
		-w /usr/code/ \
		golang:$(GOVERSION) \
		go build -a -ldflags "-X main.projectVersion=$(VERSION) -X main.projectBuild=$(COMMIT)" -o $(BINNAME) $(REPOPATH)/cli

