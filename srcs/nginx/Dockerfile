FROM alpine:3.12.4

#install
RUN apk update && apk upgrade
RUN apk add nginx openssl


#copy

COPY ./nginx.conf /etc/nginx/conf.d/default.conf
COPY ./start.sh /tmp/

#openssl

RUN openssl req -x509 -nodes -days 365 -subj "/C=RU/ST=Tatarstan/L=Kazan/O=School21, Inc./CN=mdude"  -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt

#start
RUN mkdir -p /run/nginx

RUN chmod +x /tmp/start.sh

EXPOSE 80 443

CMD  ["/tmp/start.sh"]