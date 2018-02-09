FROM bylexus/apache-php7
WORKDIR /var/www
RUN apt-get update -y
RUN apt-get install -y php7.0-intl php7.0-curl php7.0-mcrypt
COPY ./config/000-default.conf /etc/apache2/sites-enabled/000-default.conf
COPY ./config/php-apache.ini /etc/php/7.0/apache2/php.ini
COPY ./config/php-cli.ini /etc/php/7.0/cli/php.ini
