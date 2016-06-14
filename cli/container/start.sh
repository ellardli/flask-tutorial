#!/usr/bin/env bash

# Setup the folder permissions for the Nginx server
chown www-data:www-data /var/www

# Restart Nginx
service nginx restart

# Start the application uwsgi
uwsgi --need-app --ini /var/www/uwsgi.ini
