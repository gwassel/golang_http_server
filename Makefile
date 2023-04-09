.PHONY: build
build:
	go build -v ./cmd/apiserver

.PHONY: run
run:
	./apiserver

.PHONY: test
test:
	go test -v -race -timeout 30s ./...

.PHONY: lint
lint:
	golangci-lint run

.PHONY: format
format:
	go fmt ./...

.DEFAULT_GOAL := build
