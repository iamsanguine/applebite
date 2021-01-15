FROM devopsedu/webapp
MAINTAINER "Himanshu"
ADD website /var/www/html

CMD apachectl -D FOREGROUND
