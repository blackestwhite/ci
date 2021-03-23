FROM golang:alpine as builder
RUN apk --no-cache add build-base git mercurial gcc make
ADD . /src
RUN cd /src && make test build

FROM alpine
WORKDIR /app
COPY --from=builder /src/ci /app/
ENTRYPOINT ./ci