FROM alpine:3.12.4

#install
RUN apk update && apk upgrade
RUN wget https://dl.influxdata.com/influxdb/releases/influxdb-1.8.4-static_linux_amd64.tar.gz
RUN tar xvfz influxdb-1.8.4-static_linux_amd64.tar.gz
COPY ./start.sh /tmp/
COPY ./influxdb.conf /influxdb-1.8.4-1/influxdb.conf
RUN chmod +x /tmp/start.sh
RUN sh -c 'influxdb-1.8.4-1/influxd &' && sleep 5 && echo "CREATE DATABASE telegraf" | ./influxdb-1.8.4-1/influx && echo "CREATE USER root WITH PASSWORD 'root'" | /influxdb-1.8.4-1/influx && echo "GRANT ALL ON telegraf TO root" | /influxdb-1.8.4-1/influx
EXPOSE 8086

CMD  ["/tmp/start.sh"]