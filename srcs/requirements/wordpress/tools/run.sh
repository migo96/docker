
mv /var/lib/wordpress/wp-config-sample.php /var/lib/wordpress/wp-config.php

sed -i "s/database_name_here/$NEW_DB/g" /var/lib/wordpress/wp-config.php
sed -i "s/username_here/$NEW_USER/g" /var/lib/wordpress/wp-config.php
sed -i "s/password_here/$NEW_PASSWORD/g" /var/lib/wordpress/wp-config.php
sed -i "s/localhost/$HOSTNAME/g" /var/lib/wordpress/wp-config.php

chown -R www-data:www-data /run/php/

sleep 5

wp core install		--allow-root \
			--url=$WP_URL \
			--title="migo's site" \
			--admin_user=$WP_ADMIN_NAME \
			--admin_email=$WP_ADMIN_EMAIL \
			--admin_password=$WP_ADMIN_PASSWORD \
			--skip-email --path='/var/lib/wordpress'

wp user create		--allow-root \
			$WP_USER_NAME $WP_USER_EMAIL \
			--user_pass=$WP_USER_PASSWORD \
			--role=subscriber --path='/var/lib/wordpress'

/usr/sbin/php-fpm7.4 -F

