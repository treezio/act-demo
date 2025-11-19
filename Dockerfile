FROM alpine:latest

RUN apk --no-cache add curl unzip git

# install terraform
RUN curl -LO https://releases.hashicorp.com/terraform/1.13.0/terraform_1.13.0_linux_amd64.zip && \
    unzip terraform_1.13.0_linux_amd64.zip && \
    mv terraform /usr/local/bin/ && \
    rm terraform_1.13.0_linux_amd64.zip

# Smoke Tests
RUN terraform version
