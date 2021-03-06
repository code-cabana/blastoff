#!/usr/bin/env sh

WP_CLI='wp --allow-root'
LOG=$'\n'"[bootstrap] "
DB_DIR=/home/$BOOTSTRAP_WP_ADMIN_USER/db
UPLOADS_DIR=/var/www/html/wp-content/uploads

echo $LOG"Install Wordpress"
$WP_CLI core install \
  --title=$BOOTSTRAP_WP_TITLE \
  --admin_user=$BOOTSTRAP_WP_ADMIN_USER \
  --admin_password=$BOOTSTRAP_WP_ADMIN_PASSWORD \
  --admin_email=$BOOTSTRAP_WP_ADMIN_EMAIL \
  --url=$BOOTSTRAP_WP_URL \
  --skip-email \

echo $LOG"Active my-theme theme"
$WP_CLI theme activate my-theme

echo $LOG"Remove all plugins"
$WP_CLI plugin uninstall --all --deactivate

echo $LOG"Remove all themes"
$WP_CLI theme delete --all

echo $LOG"List plugins"
$WP_CLI plugin list

echo $LOG"List themes"
$WP_CLI theme list

echo $LOG"Loosen $UPLOADS_DIR permissions"
chmod -R 777 $UPLOADS_DIR

echo $LOG"Import database file if it exists"
$WP_CLI db import $DB_DIR/db.sql