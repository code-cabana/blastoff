#!/usr/bin/env sh

WP_CLI='wp --allow-root'
LOG=$'\n'"[bootstrap] "

echo $LOG"Install WordPress"
$WP_CLI core install \
  --title=$BOOTSTRAP_WP_TITLE \
  --admin_user=$BOOTSTRAP_WP_ADMIN_USER \
  --admin_password=$BOOTSTRAP_WP_ADMIN_PASSWORD \
  --admin_email=$BOOTSTRAP_WP_ADMIN_EMAIL \
  --url=$BOOTSTRAP_WP_URL \
  --skip-email \

echo $LOG"Remove all plugins"
$WP_CLI plugin uninstall --all --deactivate

echo $LOG"Remove all themes"
$WP_CLI theme delete --all

echo $LOG"Install wp-graphql plugin"
$WP_CLI plugin install wp-graphql

echo $LOG"Activate all plugins"
$WP_CLI plugin activate --all

echo $LOG"List plugins"
$WP_CLI plugin list

echo $LOG"List themes"
$WP_CLI theme list

echo $LOG"chmod 777 wp-content/uploads"
chmod -R 777 /var/www/html/wp-content/uploads