# Base image
FROM alpine:3.18

# Install applications
RUN apk add --no-cache \
    ca-certificates \
    curl \
    git \
    jq \
    openssh

# Setup jenkins user
RUN /bin/ash -c 'adduser -h /home/jenkins -g jenkins -s /bin/ash -D -u 1000 jenkins;'

# Install Terraform
RUN RELEASE="1.5.0" && \
    wget https://releases.hashicorp.com/terraform/${RELEASE}/terraform_${RELEASE}_linux_amd64.zip && \
    unzip terraform_${RELEASE}_linux_amd64.zip && \
    rm terraform_${RELEASE}_linux_amd64.zip && \
    mv terraform /usr/bin/terraform
