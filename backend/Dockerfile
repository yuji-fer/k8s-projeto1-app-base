FROM php:7.4-apache
RUN docker-php-ext-install mysqli
COPY conexao.php /var/www/html/
COPY index.php /var/www/html/
WORKDIR /var/www/html/
EXPOSE 80