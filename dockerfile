FROM php:7.2-apache
Maintainer "Himanshu K Singh"
ADD /tmp/eduproject/website/ /var/www/html

EXPOSE 80
