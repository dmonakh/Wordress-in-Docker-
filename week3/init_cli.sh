#! /usr/bin/env bash

# Configure WP-CLI
# wp --allow-root core config --dbname=${WORDPRESS_DB_NAME} --dbuser=root --dbpass=${WORDPRESS_DB_PASSWORD} --dbhost=${WORDPRESS_DB_HOST} --dbprefix=wp_
wp --allow-root core install --url=localhost --title="MyITSite" --admin_user=dmonakh --admin_password=monakh3108 --admin_email=den3108mon@gmail.com

# Download and install Neve theme
# wp --allow-root theme install neve

# Activate Neve theme
# wp --allow-root theme activate neve