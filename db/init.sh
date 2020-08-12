#!/bin/bash
echo "$MYSQL_CLIENT"
echo "$MYSQL_ROOT_PASSWORD"

mysql -u$MYSQL_CLIENT -p$MYSQL_ROOT_PASSWORD -e "grant all on *.* to 'root'@'%' identified by '$MYSQL_ROOT_PASSWORD';"
mysql -u$MYSQL_CLIENT -p$MYSQL_ROOT_PASSWORD -e "grant all on *.* to 'root'@'127.0.0.1' identified by '$MYSQL_ROOT_PASSWORD';"
mysql -u$MYSQL_CLIENT -p$MYSQL_ROOT_PASSWORD -e "grant all on *.* to 'root'@'localhost' identified by '$MYSQL_ROOT_PASSWORD';"
mysql -u$MYSQL_CLIENT -p$MYSQL_ROOT_PASSWORD -e "flush privileges"
mysql -u$MYSQL_CLIENT -p$MYSQL_ROOT_PASSWORD -e "create database $MYSQL_DATABASE;"
mysql -u$MYSQL_CLIENT -p$MYSQL_ROOT_PASSWORD -e "grant all on $MYSQL_DATABASE.* to 'root'@'%' identified by '$MYSQL_ROOT_PASSWORD';"
mysql -u$MYSQL_CLIENT -p$MYSQL_ROOT_PASSWORD -e "grant all on $MYSQL_DATABASE.* to 'root'@'127.0.0.1' identified by '$MYSQL_ROOT_PASSWORD';"

