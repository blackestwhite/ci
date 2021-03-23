GOCMD=go
GOBUILD=$(GOCMD) build
GOCLEAN=$(GOCMD) clean
GOTEST=$(GOCMD) test
GOGET=$(GOCMD) get
BINARY_NAME=ci
LINTER=golangci-lint

all: test build

test:
\t$(GOTEST) ./... -v

build:
\t$(GOBUILD) -o $(BINARY_NAME) -v

lint:
\t$(LINTER) run