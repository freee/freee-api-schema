FROM php:7.3-cli

RUN apt-get update; \
    curl -sL https://deb.nodesource.com/setup_12.x | bash -; \
    apt-get install -y --no-install-recommends \
        git \
        libzip-dev \
        nodejs \
        unzip \
        zlib1g-dev \
    ; \
    rm -rf /var/lib/apt/lists/*

RUN docker-php-ext-install zip

RUN cp $PHP_INI_DIR/php.ini-development $PHP_INI_DIR/php.ini; \
    sed -i -e "s/^memory_limit.*$/memory_limit = 2G/g" $PHP_INI_DIR/php.ini

WORKDIR /tmp

RUN curl https://raw.githubusercontent.com/composer/getcomposer.org/76a7060ccb93902cd7576b67264ad91c8a2700e2/web/installer -o - -s | php -- --quiet; \
    mv composer.phar /usr/local/bin/composer

WORKDIR /usr/src/app

ENV PATH /root/.composer/vendor/bin:$PATH