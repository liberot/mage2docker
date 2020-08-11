#!/bin/bash

# while true
# do
#	echo "doing nothing"
#	sleep 9 
# done


# cd /var/www/html

# git clone https://github.com/magento/magento2

# php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
# php -r "if (hash_file('sha384', 'composer-setup.php') === 'e5325b19b381bfd88ce90a5ddb7823406b2a38cff6bb704b0acc289a09c8128d4a8ce2bbafcd1fcbdc38666422fe2806') { echo     'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
# php composer-setup.php
# php -r "unlink('composer-setup.php');"

# php ./composer.phar install

# ./bin/magento setup:install

# bin/magento setup:install 		\
#	--base-url=http://127.0.0.1 	\
#	--db-host=database 		\
#	--db-name=magento20001 		\
#	--db-user=magento20001 		\
#	--db-password=magento20001 	\
#	--admin-firstname=Magento 	\
#	--admin-lastname=User 		\ 
#	--admin-email=user@example.com 	\
#	--admin-user=admin 		\
#	--admin-password=admin 		\ 
#	--language=en_US 		\
#	--currency=USD 			\ 
#	--timezone=America/Chicago 	\ 
#	--use-rewrites=1

apachectl -DFOREGROUND
