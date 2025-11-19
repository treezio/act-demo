FROM alpine:latest

RUN apk --no-cache add curl unzip git bash

# Smoke Tests
RUN curl --version