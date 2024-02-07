#!/bin/bash

cd /var/www/wordpress

if [ ! -f wp-config.php ]; then

	wp core download --allow-root
	wp config create --allow-root --dbname=$DB_NAME --dbuser=$DB_USER --dbpass=$DB_PW --dbhost=$DB_HOST
	wp core install --allow-root --url=$DN --title=$WP_TITLE --admin_name=$WP_ADMIN --admin_password=$WP_ADMIN_PW --admin_email=$WP_ADMIN_MAIL
	
	wp theme install /astra.zip --allow-root --activate
	
	wp user create --allow-root $WP_USER $WP_USER_MAIL --user_pass=$WP_USER_PW
	
	
	
	chown www-data:www-data /var/www/wordpress/wp-content/uploads -R

fi

php-fpm7.4 -F