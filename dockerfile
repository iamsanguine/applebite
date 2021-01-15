FROM php:7.2-apache
Maintainer "Himanshu K Singh"
COPY /tmp/eduproject/website/ /var/www/html

EXPOSE 80
