FROM php:8.0.7-fpm-alpine

# Laravel Excel dependencies
RUN apk --no-cache update \
    && apk --no-cache upgrade \
    && apk add --update \
    libpng-dev \
    libzip-dev
RUN docker-php-ext-install gd \
    zip \
    pdo pdo_mysql

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Logs directory
RUN mkdir -p /var/www/storage/logs/
