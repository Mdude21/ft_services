FROM alpine:3.12.4

#install
RUN apk update && apk upgrade
RUN apk add mariadb mariadb-client openrc


#copy
COPY ./start.sh /tmp/
COPY ./mariadb-server.cnf /etc/my.cnf.d/mariadb-server.cnf
COPY ./wordpress.sql /


#start
RUN chmod +x /tmp/start.sh
RUN chmod +x /wordpress.sql


EXPOSE 3306

CMD  ["/tmp/start.sh"]