FROM node:latest AS node_builder
WORKDIR /spectre
COPY package.json package-lock.json ./
RUN npm ci
COPY . .
RUN npx grunt

FROM golang:1.13-alpine AS builder

WORKDIR /spectre
COPY go.mod go.sum ./
COPY go.mod ./
RUN go mod download
COPY . .
ARG BRANCH
ARG COMMIT
RUN go build -ldflags="-w -s -X main.VERSION=${BRANCH}.${COMMIT}" -o build/ghostbin
COPY *.yml ./build/
COPY --from=node_builder /spectre/build/ ./build/

FROM alpine:latest
WORKDIR /spectre
RUN apk add --no-cache python3 py3-pip py3-pygments

COPY --from=builder /spectre/build/ ./
RUN ls ./
RUN chmod +x ghostbin

CMD ["./ghostbin", "-root=/spectre/storage"]
