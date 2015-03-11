FROM php:fpm

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/tmp/ && \
  chmod 755 /tmp/composer.phar && \
  mv /tmp/composer.phar /usr/local/bin/composer
