#!/bin/bash

# Change directory to /var/www/anyhow
cd /var/www/anyhow
# Run the commands inside /var/www/anyhow
sudo composer update
sudo php bin/magento maintenance:enable
sudo php bin/magento setup:upgrade
sudo php bin/magento setup:di:compile
sudo php bin/magento setup:static-content:deploy -f
sudo php bin/magento maintenance:disable
