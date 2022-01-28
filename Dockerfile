FROM node:12.22.9-alpine3.15
LABEL maintainer="David Lemaitre"

ENV GULPCLI_VERSION 2.3.0

# Install dependencies
RUN apk add --no-cache git \
    gcc \
    g++ \
    make \
    python2

# Install gulp-cli
RUN npm install -g gulp-cli@"$GULPCLI_VERSION"

# Expose ports for Browsersync
EXPOSE 3000 3001

# Create app directory
RUN mkdir -p /var/www/app
WORKDIR /usr/src/app
