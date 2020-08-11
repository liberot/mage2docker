#!/bin/bash
mysqld
mysql -u $MYSQL_CLIENT -p$MYSQL_ROOT_PASSWORD -e "grant all on *.* to 'root'@'%' identified by '$MYSQL_ROOT_PASSWORD';"
mysql -u $MYSQL_CLIENT -p$MYSQL_ROOT_PASSWORD -e "create database $MYSQL_DATABASE;"
mysql -u $MYSQL_CLIENT -p$MYSQL_ROOT_PASSWORD -e "grant all on $MYSQL_DATABASE.* to 'root'@'%' identified by '$MYSQL_ROOT_PASSWORD';"
