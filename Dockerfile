FROM 4xxi/php

RUN apk upgrade --update && apk add \
autoconf \
gcc \
libc-dev \
openssl-dev \
make \
pcre-dev

# install mongodb ext
RUN pecl install mongodb \
    && docker-php-ext-enable mongodb
