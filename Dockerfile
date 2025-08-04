FROM php:7.4-apache

RUN apt-get update && \
    docker-php-ext-install mysqli && \
    a2enmod rewrite

COPY ./config/apache.conf /etc/apache2/sites-available/000-default.conf
COPY ./welearnsec-bank /var/www/html/

RUN chown -R www-data:www-data /var/www/html && \
    chmod -R 755 /var/www/html
