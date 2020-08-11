FROM debian

ARG mysql_client
ARG mysql_password
ARG mysql_database
RUN export MYSQL_ROOT_PASSWORD ${mysql_password}
RUN export MYSQL_DATABASE ${mysql_database}
RUN export MYSQL_CLIENT ${mysql_client}

RUN echo ${MYSQL_DATABASE}

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

CMD ["chmod 0755 /etc/init.sh"]
CMD ["/etc/init.sh"]

