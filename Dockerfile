FROM php:5.6-apache
RUN docker-php-ext-install  mysqli
RUN apt-get update && apt-get install -y git
WORKDIR /var/www/html
RUN  git clone https://github.com/skorik-kirill/site.git ./
