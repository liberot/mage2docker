#!/bin/bash

bin/magento setup:install 		\
	--base-url=http://127.0.0.1 	\
	--db-host=db 			\
	--db-name=magento20001 		\
	--db-user=magento20001 		\
	--db-user=root			\
	--db-password=magento20001 	\
	--admin-firstname=magento 	\
	--admin-lastname=client 	\
	--admin-email=client@magento.local.com \
	--admin-user=admin123 		\
	--admin-password=admin123 	\
	--language=en_US 		\
	--currency=USD 			\
	--timezone=America/Chicago 	\
	--use-rewrites=1


