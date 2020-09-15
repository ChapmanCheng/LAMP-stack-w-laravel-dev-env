FROM php:7.3-apache

RUN apt-get update\
    && apt-get upgrade -y\
    && apt-get autoclean\
    && docker-php-ext-install pdo_mysql\
    && rm -rf /var/lib/apt/lists

WORKDIR /etc/apache2
COPY apache2/apache2.conf apache2.conf
COPY apache2/sites-enabled/000-default.conf sites-enabled/000-default.conf

RUN a2enmod rewrite

WORKDIR /var/www

EXPOSE 80/tcp
