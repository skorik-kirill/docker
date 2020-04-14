FROM wordpress:4-apache
RUN apt-get update && apt-get install -y git
WORKDIR /var/www/html
RUN chmod -R 777 wp-content/
WORKDIR /var/www/html/wp-content/themes
RUN rm -rf twentyfifteen twentyseventeen twentysixteen
RUN rm index.php
RUN git clone https://github.com/skorik-kirill/content.git ./
WORKDIR /var/www/html

