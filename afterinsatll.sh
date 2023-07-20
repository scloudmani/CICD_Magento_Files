#!/bin/bash

# Change directory to /var/www/anyhow
cd /var/www/anyhow

# Run the commands inside /var/www/anyhow
composer update

php bin/magento maintenance:enable

php bin/magento setup:upgrade

php bin/magento setup:di:compile

php bin/magento setup:static-content:deploy -f

php bin/magento maintenance:disable
