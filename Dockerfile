FROM php:5.6-apache
RUN docker-php-ext-install  mysqli
RUN apt-get update && apt-get install -y git
WORKDIR /var/www/html/wp-content/themes
RUN rm -rf twentyfifteen twentyseventeen twentysixteen
RUN git clone https://github.com/skorik-kirill/content.git ./
WORKDIR /var/www/html

