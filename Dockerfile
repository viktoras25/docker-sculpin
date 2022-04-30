FROM php:7.4-cli-alpine

ARG COMPOSER_VERSION="2.3.5"
ARG COMPOSER_HASH="3b3b5a899c06a46aec280727bdf50aad14334f6bc40436ea76b07b650870d8f4"
ARG SCULPIN_VERSION="dev-master"

RUN curl -sS https://getcomposer.org/download/${COMPOSER_VERSION}/composer.phar -o composer \
    && echo "${COMPOSER_HASH}  composer" | sha256sum -c \
    && chmod +x composer \
    && ./composer config -g bin-dir /usr/bin \
    && ./composer global require -q sculpin/sculpin:${SCULPIN_VERSION} \
    && ./composer clear-cache \
    && rm composer

WORKDIR /app

EXPOSE 8000

ENTRYPOINT ["sculpin"]
CMD ["help"]
