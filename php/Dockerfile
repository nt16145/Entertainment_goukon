FROM php:7.2-apache
RUN apt-get update && \
  # PHPのExtensionをインストール．
  docker-php-ext-install pdo_mysql mysqli mbstring && \ 
  apt install -y git
RUN curl -s https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer
RUN mkdir slim; cd slim
RUN composer require slim/slim "^3.0"

WORKDIR /var/www

ADD apache/ /etc/apache2/sites-available

ADD goukon /var/www/goukon

RUN a2ensite slim3

RUN a2dissite 000-default

RUN a2enmod rewrite

EXPOSE 80
