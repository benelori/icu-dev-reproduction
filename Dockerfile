# Prepare compiled extensions
FROM php:8.1-cli-alpine as build

RUN apk --no-cache add autoconf build-base icu-dev

RUN docker-php-ext-install intl

FROM php:8.1-cli-alpine

COPY --from=build /usr/local/lib/php/extensions/no-debug-non-zts-20210902/intl.so /usr/local/lib/php/extensions/no-debug-non-zts-20210902/intl.so

RUN apk --no-cache add icu-dev

RUN docker-php-ext-enable intl
