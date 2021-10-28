#!/usr/bin/env sh

WP_CLI='wp --allow-root'
LOG=$'\n'"[export] "
DB_DIR=/home/$BOOTSTRAP_WP_ADMIN_USER/db

echo $LOG"Create $DB_DIR"
mkdir -p $DB_DIR

echo $LOG"Export database to file"
$WP_CLI db export $DB_DIR/db.sql