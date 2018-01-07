FROM node:6.12.3-alpine
MAINTAINER David Lemaitre

ENV GULPCLI_VERSION 1.4.0
ENV MODERNIZR_VERSION 3.5.0
ENV BROWSERSYNC_VERSION 2.18.13

# Install requirements
RUN apk add --no-cache \
    git \
    make \
    gcc \
    g++ \
    python \
    automake \
    autoconf \
    nasm \
    zlib-dev

# Install Node packages
RUN npm install -g \
    gulp-cli@"$GULPCLI_VERSION" \
    modernizr@"$MODERNIZR_VERSION" \
    browser-sync@"$BROWSERSYNC_VERSION"

# Expose ports for Browser-Sync
EXPOSE 3000 3001

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
