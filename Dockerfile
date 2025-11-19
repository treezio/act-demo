FROM ubuntu:latest

RUN apt-get update && apt-get install -y curl

# Smoke Tests
RUN curl --version