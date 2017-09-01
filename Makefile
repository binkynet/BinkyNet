PROJECT := BinkyNet

.PHONY: all clean build

all: build

clean:

build:
	cd discovery && go build && cd -
	cd model && go build && cd -
