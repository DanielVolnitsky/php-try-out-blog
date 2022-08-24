FROM php:fpm

RUN docker-php-ext-install pdo pdo_mysql

# for nicer error messages on a development server
RUN pecl install xdebug && docker-php-ext-enable xdebug