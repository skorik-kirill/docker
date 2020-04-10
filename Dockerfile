FROM wordpress:4-apache
RUN apt-get update && apt-get install -y git
WORKDIR /var/www/html/wp-content/themes
RUN rm -rf twentyfifteen
RUN rm -rf twentyseventeen
RUN rm -rf twentysixteen 
WORKDIR /var/www/html/wp-content/themes
RUN git clone https://github.com/skorik-kirill/content.git ./
