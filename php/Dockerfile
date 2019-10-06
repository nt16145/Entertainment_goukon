FROM php:7.2-apache
RUN apt-get update && \
  # PHPのExtensionをインストール．
  docker-php-ext-install pdo_mysql mysqli mbstring && \ 
  apt install -y git && \
  curl -s https://getcomposer.org/installer | php && \
  mv composer.phar /usr/local/bin/composer && \
  mkdir slim; cd slim && \
  composer require slim/slim "^3.0"

WORKDIR /var/www

ADD apache/sites /etc/apache2/sites-available
# ADD apache/apache2 /etc/apache2
ADD apache/conf /etc/apache2/conf-available
ADD goukon /var/www/goukon

RUN a2ensite slim3 && \
  a2dissite 000-default && \
  a2enmod rewrite && \
  a2enconf security && \
  a2enmod headers && \
  a2enmod ssl

EXPOSE 80
