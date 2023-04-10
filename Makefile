.PHONY: build
build:
	go build -v ./cmd/apiserver

.PHONY: build_no_libc
build_no_libc:
	CGO_ENABLED=0 go build -v ./cmd/apiserver

.PHONY: run
run:
	./apiserver

.PHONY: test
test:
	go test -v -race -timeout 30s ./...

.PHONY: cover
cover:
	go test -v -race -timeout 30s -cover ./...

.PHONY: lint
lint:
	golangci-lint run

.PHONY: format
format:
	go fmt ./...

.DEFAULT_GOAL := build
