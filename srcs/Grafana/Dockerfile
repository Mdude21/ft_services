FROM alpine:3.12.5

#install
RUN apk update && apk upgrade
RUN wget https://dl.grafana.com/enterprise/release/grafana-enterprise-7.5.1.linux-amd64.tar.gz
RUN tar -zxvf grafana-enterprise-7.5.1.linux-amd64.tar.gz
RUN apk add libc6-compat
#copy

COPY ./start.sh /tmp/
COPY ./grafana.db /grafana-7.5.1/data/grafana.db
#run
RUN chmod +x /tmp/start.sh

EXPOSE 3000

CMD  ["/tmp/start.sh"]