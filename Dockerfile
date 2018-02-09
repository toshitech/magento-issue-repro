FROM bylexus/apache-php7
RUN apt-get update -y
RUN apt-get install -y php7.0-intl
COPY ./docker/000-default.conf /etc/apache2/sites-enabled/000-default.conf
