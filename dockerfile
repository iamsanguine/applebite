FROM php:7.2-apache
Maintainer "Himanshu K Singh"
ADD website /var/www/html

RUN docker stop applebite-c
RUN docker rm applebite-c
RUN docker rmi applebite:test
RUN docker build -t applebite:test .
RUN docker run -itd --name applebite-c -p 9999:80 applebite:test
