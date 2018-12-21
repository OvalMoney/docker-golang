FROM golang:1.11-alpine3.8

ENV GO111MODULE on

# Install GolangCI-lint
ARG GOLANGCI_LINT_VERSION=v1.11.2
RUN wget -O - -q https://install.goreleaser.com/github.com/golangci/golangci-lint.sh | sh -s ${GOLANGCI_LINT_VERSION}

RUN apk --no-cache add \
    git
