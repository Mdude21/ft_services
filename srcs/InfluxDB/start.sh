#!/bin/sh
#sh -c 'influxdb-1.8.4-1/influxd &' && sleep 5 && echo "CREATE DATABASE telegraf" | ./influxdb-1.8.4-1/influx && echo "CREATE USER root WITH PASSWORD 'root'" | /influxdb-1.8.4-1/influx && echo "GRANT ALL ON telegraf TO root" | /influxdb-1.8.4-1/influx
#sleep 100
influxdb-1.8.4-1/influxd run -config influxdb-1.8.4-1/influxdb.conf