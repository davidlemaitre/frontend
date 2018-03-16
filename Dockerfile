FROM node:8.10.0-alpine
LABEL maintainer="David Lemaitre"

ENV GULPCLI_VERSION 2.0.1

# Install requirements
RUN apk add --no-cache git

# Install gulp-cli
RUN npm install -g gulp-cli@"$GULPCLI_VERSION"

# Expose ports for Browsersync
EXPOSE 3000 3001

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
