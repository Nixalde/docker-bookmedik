FROM php:7.0-apache
RUN apt-get update; \
    apt -y upgrade; \
    docker-php-ext-install mysqli
COPY ./bookmedik /var/www/html
COPY ./apache2.conf /etc/apache2/apache2.conf
CMD apache2ctl -D FOREGROUND
