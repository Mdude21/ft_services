FROM alpine:3.12.4

#install
RUN apk update && apk upgrade
RUN apk add vsftpd openssl supervisor


#copy

COPY ./vsftpd.conf /etc/vsftpd/vsftpd.conf


#openssl

RUN openssl req -x509 -nodes -days 365 -subj "/C=RU/ST=Tatarstan/L=Kazan/O=School21, Inc./CN=mdude"  -newkey rsa:2048 -keyout /etc/ssl/private/vsftpd.key -out /etc/ssl/certs/vsftpd.crt

#start
RUN adduser -D -h /var/www ftps
RUN echo "ftps:ftps" | chpasswd
COPY ./start.sh /tmp/
RUN chmod +x /tmp/start.sh
RUN chmod +x /etc/vsftpd
RUN chmod 777 /var/www
EXPOSE 21 10100
CMD  ["/tmp/start.sh"]