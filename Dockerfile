FROM php:8.0-fpm

RUN apt-get update

RUN apt-get install -y curl vim \
    libfreetype6-dev \
    libjpeg-dev \
    libmagickwand-dev \
    libpng-dev \
    libzip-dev

RUN docker-php-ext-install bcmath \
    exif \
    gd \
    mysqli \
    zip

COPY wordpress /var/www/wordpress

RUN chmod -R 777 /var/www/wordpress

WORKDIR /var/www/wordpress
