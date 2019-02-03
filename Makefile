PROJECT := BinkyNet
ROOTDIR := $(shell pwd)
VERSION := $(shell cat VERSION)
COMMIT := $(shell git rev-parse --short HEAD)

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

SOURCES := $(shell find . -name '*.go')

.PHONY: all clean deps

all: $(BIN)

clean:
	rm -Rf $(BIN) $(GOBUILDDIR)

local:
	@${MAKE} -B GOOS=$(shell go env GOHOSTOS) GOARCH=$(shell go env GOHOSTARCH) $(BIN)

$(BIN): $(SOURCES)
	go build -a -ldflags "-X main.projectVersion=$(VERSION) -X main.projectBuild=$(COMMIT)" -o $(BINNAME) $(REPOPATH)/cli

