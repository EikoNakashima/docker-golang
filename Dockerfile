FROM golang:1.17.0-alpine3.14

ENV ROOT=/go/src/app
WORKDIR ${ROOT}

RUN apk update && apk add git

COPY ./main.go ${ROOT}

COPY go.mod ${ROOT}

RUN go mod tidy