#!/bin/bash

source .env
mkdir -p ~/wp-backups

# Backup database
mysqldump -u $WORDPRESS_DB_USERNAME $WORDPRESS_DB_NAME > ~/wp-backups/wordpress.sql

# Backup website
sudo zip -r ~/wp-backups/wordpress.zip $WORDPRESS_PATH
