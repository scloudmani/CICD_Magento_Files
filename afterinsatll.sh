#!/bin/bash

# Run necessary Magento commands
composer update

php bin/magento maintenance:enable

php bin/magento setup:upgrade

php bin/magento setup:di:compile

php bin/magento setup:static-content:deploy -f

php bin/magento maintenance:disable
