FROM node:10.23.2-alpine3.11
LABEL maintainer="David Lemaitre"

ENV GULPCLI_VERSION 2.3.0

# Install requirements
RUN apk add --no-cache git

# Install gulp-cli
RUN npm install -g gulp-cli@"$GULPCLI_VERSION"

# Expose ports for Browsersync
EXPOSE 3000 3001

# Create app directory
RUN mkdir -p /var/www/app
WORKDIR /usr/src/app
