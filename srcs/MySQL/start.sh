#!/bin/sh

openrc default
etc/init.d/mariadb setup
rc-service mariadb start


mysql -e "CREATE DATABASE wordpress;"
mysql -e "CREATE USER 'root' IDENTIFIED BY 'root';"
mysql -e "GRANT ALL PRIVILEGES ON wordpress.* TO 'root';"
mysql -e "FLUSH PRIVILEGES;"


mysql wordpress < wordpress.sql
rc-service mariadb stop

exec /usr/bin/mysqld --user=root --datadir=/var/lib/mysql