FROM alpine:3.12.5

#install
RUN apk update && apk upgrade
RUN apk add telegraf --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community
#copy
COPY ./telegraf.conf /etc/telegraf.conf
COPY ./start.sh /tmp/
RUN chmod +x /tmp/start.sh

CMD  ["/tmp/start.sh"]