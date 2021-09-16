FROM alpine:3.12.4

#install
RUN apk update && apk upgrade
RUN apk add php-fpm php-gd php-json php-bcmath php-xml php-mbstring php-zip php-curl php7-common php7-session php7-iconv php7-json php7-gd php7-curl php7-xml php7-mysqli php7-imap php7-cgi fcgi php7-pdo php7-pdo_mysql php7-soap php7-xmlrpc php7-posix php7-mcrypt php7-gettext php7-ldap php7-ctype php7-dom
RUN wget https://ru.wordpress.org/latest-ru_RU.tar.gz -O wordpress.tar.gz
RUN tar -xvf /wordpress.tar.gz
RUN rm -f /wordpress.tar.gz
RUN apk add nginx supervisor
RUN mv wordpress var/www/

#copy


COPY ./wp-config.php var/www/wordpress
COPY ./supervisor.conf /etc/supervisord.conf

COPY ./start.sh /tmp/start.sh
COPY ./nginx.conf /etc/nginx/conf.d/default.conf

RUN chmod +x /tmp/start.sh
RUN mkdir -p /run/nginx
RUN mkdir -p /run/php
RUN chmod -R 755 /var/www/*

EXPOSE 5050

CMD  ["/tmp/start.sh"]