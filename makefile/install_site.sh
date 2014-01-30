#!/bin/bash
DRUPAL_WWW="/var/www/civicrm_website_i18n"
# MAKEFILE="<git repo path>/makefile/general.make"
MAKEFILE="/home/ixiam/civicrm_website_i18n/makefile/general.make"
DB_NAME="civicrm_website_i18n"
DB_USER="root"
DB_PASS="admin"
DRUPAL_USER="root"
DRUPAL_PASS="admin"


clear
# Clean previous installations
sudo rm -rf $DRUPAL_WWW
# Drush make
drush make $MAKEFILE $DRUPAL_WWW

# Drush site-install
cd $DRUPAL_WWW
chmod -R 777 $DRUPAL_WWW/sites/default
drush --yes si civicrm_website_i18n --db-url=mysql://$DB_USER:$DB_PASS@localhost:/$DB_NAME --db-su=$DB_USER --db-su-pw=$DB_PASS --site-name="" --account-name=$DRUPAL_USER --account-pass=$DRUPAL_PASS

# Change permissions, just in case...
chmod -R 777 $DRUPAL_WWW/sites/default/files
chmod -R 777 $DRUPAL_WWW/sites/default
