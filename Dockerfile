# Base image
FROM hashicorp/terraform:1.5.7

# Install applications
RUN apk add --no-cache \
    ca-certificates \
    curl \
    git \
    jq \
    openssh

# Setup jenkins user
RUN /bin/ash -c 'adduser -h /home/jenkins -g jenkins -s /bin/ash -D -u 1000 jenkins;'
