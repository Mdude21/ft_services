#!/bin/sh

minikube start --vm-driver=virtualbox
minikube addons enable metallb
kubectl apply -f ./srcs/yamls/configmap.yaml
eval $(minikube docker-env)
docker build -t nginx_img ./srcs/nginx/
kubectl apply -f ./srcs/yamls/nginx.yaml
docker build -t mysql_img ./srcs/MySQL/
kubectl apply -f ./srcs/yamls/mysql.yaml
docker build -t phpmyadmin_img ./srcs/PhpMyAdmin/
kubectl apply -f ./srcs/yamls/phpmyadmin.yaml
docker build -t wordpress_img ./srcs/WordPress/
kubectl apply -f ./srcs/yamls/wordpress.yaml
docker build -t ftps_img ./srcs/FTPS
kubectl apply -f ./srcs/yamls/ftps.yaml
docker build -t influxdb_img ./srcs/InfluxDB
kubectl apply -f ./srcs/yamls/influxdb.yaml
docker build -t grafana_img ./srcs/Grafana
kubectl apply -f ./srcs/yamls/grafana.yaml
docker build -t telegraf_img srcs/Telegraf
kubectl apply -f ./srcs/yamls/telegraf.yaml