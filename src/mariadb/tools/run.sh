service mariadb start

NEW_DB="mydatabase"
NEW_USER="migo"
NEW_PASSWORD="dmdkr7845"

mariadb -e "CREATE DATABASE $NEW_DB;"
mariadb -e "CREATE USER '$NEW_USER'@'%' IDENTIFIED BY '$NEW_PASSWORD';"
mariadb -e "GRANT ALL PRIVILEGES ON $NEW_DB.* TO '$NEW_USER'@'%' IDENTIFIED BY '$NEW_PASSWORD';"
mariadb -e "FLUSH PRIVILEGES;"

service mariadb stop
mysqld
