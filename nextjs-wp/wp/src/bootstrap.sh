#!/usr/bin/env sh

WP_CLI='wp --allow-root'
LOG=$'\n'"[bootstrap] "

echo $LOG"Install WordPress"
$WP_CLI core install \
  --title="nextjs-wp" \
  --admin_user="wordpress" \
  --admin_password="wordpress" \
  --admin_email="admin@codecabana.com.au" \
  --url="http://localhost:8000" \
  --skip-email \

echo $LOG"Remove all plugins"
$WP_CLI plugin uninstall --all --deactivate

echo $LOG"Remove all themes"
$WP_CLI theme delete --all

echo $LOG"Install wp-graphql plugin"
$WP_CLI plugin install wp-graphql

echo $LOG"List plugins"
$WP_CLI plugin list

echo $LOG"List themes"
$WP_CLI theme list