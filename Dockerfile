FROM php:7.2-apache
MAINTAINER Himanshu Singh <i.sanguine@gmail.com>

#Copy Application Files
RUN rm -rf /var/www/html/*
ADD website /var/www/html

#Open port 8888
EXPOSE 8888

#Start Apache service
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]

