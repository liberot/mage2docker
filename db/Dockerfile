FROM debian

ARG mysql_client
ARG mysql_password
ARG mysql_database
env MYSQL_ROOT_PASSWORD ${mysql_password}
env MYSQL_DATABASE ${mysql_database}
env MYSQL_CLIENT ${mysql_client}

RUN apt-get update 				&& \
  apt-get -y install mariadb-server 		&& \
  mkdir -p /var/lib/mysql 			&& \
  mkdir -p /var/run/mysqld 			&& \
  mkdir -p /var/log/mysql 			&& \
  touch /var/run/mysqld/mysqld.sock 		&& \
  touch /var/run/mysqld/mysqld.pid 		&& \
  chown -R mysql:mysql /var/lib/mysql 		&& \
  chown -R mysql:mysql /var/run/mysqld 		&& \
  chown -R mysql:mysql /var/log/mysql 		&& \
  chmod -R 777 /var/run/mysqld

CMD ["chmod a+x /etc/init.sh"]
CMD ["/etc/init.sh"]

