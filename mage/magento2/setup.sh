#!/bin/bash

#do it on local fd babä for frustrating feces reason...

git clone https://github.com/magento/magento2

php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('sha384', 'composer-setup.php') === 'e5325b19b381bfd88ce90a5ddb7823406b2a38cff6bb704b0acc289a09c8128d4a8ce2bbafcd1fcbdc38666422fe2806') { echo     'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"

php -d memory_limit=-1 ./composer.phar upgrade 
php -d memory_limit=-1 ./composer.phar install

#./bin/magento setup:install 		\
#	--base-url=http://127.0.0.1 	\
#	--db-host=db 			\
#	--db-name=magento20001 		\
#	--db-user=magento20001 		\
#	--db-user=root			\
#	--db-password=magento20001 	\
#	--admin-firstname=magento 	\
#	--admin-lastname=client 	\
#	--admin-email=client@magento.local.com \
#	--admin-user=admin123 		\
#	--admin-password=admin123 	\
#	--language=en_US 		\
#	--currency=USD 			\
#	--timezone=America/Chicago 	\
#	--use-rewrites=1

# -> ./app/etc/config.php
# -> ./app/etc/env.php

php -d memory_limit=-1 ./bin/magento setup:install
php -d memory_limit=-1 ./bin/magento setup:di:compile
php -d memory_limit=-1 ./bin/magento indexer:reindex
 
