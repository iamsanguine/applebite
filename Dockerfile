FROM devopsedu/webapp
MAINTAINER "Himanshu"
ADD website /var/www/html
RUN rm /var/www/html/index.html
CMD apachectl -D FOREGROUND000
