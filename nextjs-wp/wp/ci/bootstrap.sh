#!/usr/bin/env sh

echo "Installing WordPress"
wp core install \
  --title="nextjs-wp" \
  --admin_user="wordpress" \
  --admin_password="wordpress" \
  --admin_email="admin@codecabana.com.au" \
  --url="http://localhost:8000" \
  --skip-email \
  --allow-root

# echo "Removing all default plugins"
# wp plugin uninstall --all --deactivate --skip-plugins=wp-graphql

# wp plugin uninstall akismet
# wp plugin delete akismet --debug

# wp plugin list