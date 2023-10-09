#!/bin/bash
# Create the MySQL server user user_0d_1.
# Check if the user already exists.
user_exists=$(mysql -u root -p -e "SELECT EXISTS(SELECT 1 FROM mysql.user WHERE user='user_0d_1');")
# If the user does not exist, create it.
if [ "$user_exists" -eq 0 ]; then
  mysql -u root -p -e "CREATE USER 'user_0d_1'@'localhost' IDENTIFIED BY 'user_0d_1_pwd';"
fi
# Grant all privileges to the user.
mysql -u root -p -e "GRANT ALL PRIVILEGES ON *.* TO 'user_0d_1'@'localhost' WITH GRANT OPTION;"
# Flush the privileges.
mysql -u root -p -e "FLUSH PRIVILEGES;"
