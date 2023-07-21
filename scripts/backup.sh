#!/bin/bash

# Create a backup folder if it doesn't exist using sudo
sudo mkdir -p "/var/www/anyhow_backup"

# Move the specified files to the backup folder using sudo
sudo mv /var/www/anyhow/auth.json.sample "/var/www/anyhow_backup/"
sudo mv /var/www/anyhow/composer.json "/var/www/anyhow_backup/"
sudo mv /var/www/anyhow/composer.lock "/var/www/anyhow_backup/"
sudo mv /var/www/anyhow/nginx.conf.sample "/var/www/anyhow_backup/"
sudo mv /var/www/anyhow/app "/var/www/anyhow_backup/"


# Note: The deployment process will add new versions of these files to /var/www/anyhow/
