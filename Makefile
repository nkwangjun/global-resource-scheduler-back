VERSION=$(shell git rev-parse --verify HEAD)
CURRENT_PATH=$(shell pwd)
ARCH=$(shell arch)
VERSION=1.5.1

.PHONY: build all clean

build:
	GOOS=linux go build -o bin/kube-scheduler cmd/kube-scheduler/scheduler.go
clean:
	go clean

all: build