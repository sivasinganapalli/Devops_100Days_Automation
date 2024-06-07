#!/bin/bash
echo "Updating the os ======================================================" | tee -a lamp.log
sudo apt update >> lamp.log
echo "Upgrading the OS =====================================================" | tee -a lamp.log
sudo apt upgrade -y >> lamp.log
echo "Installing apache server in the system================================"  | tee -a lamp.log
sudo apt install apache2 -y >> lamp.log
echo "Enabling the service to run even on the boot time ====================" | tee -a lamp.log
systemctl enable apache2 >> lamp.log
echo "activating the service-------========================================= " | tee -a lamp.log
systemctl active apache2 >> lamp.log
echo "Installing Mysql server==============================================" | tee -a lamp.log

sudo apt install mysql-server -y >> lamp.log
#echo "Running the mysql secure installation ====================================" | tee -a lamp.log
#mysql_secure_installation <<EOF 
#y 
#secret 
#secret 
#y 
#y 
#y 
#y 
#EOF  

echo "Install PHP ==================================================================" | tee -a lamp.log
sudo apt install php libapache2-mod-php php-mysql -y >> lamp.log
echo "Restart apache -2 ============================================================" | tee -a lamp.log
sudo systemctl restart apache2 >> lamp.log
echo "Verifying the installations....." | tee -a lamp.log
apache2 -v >> lamp.log
mysql --version >> lamp.log
php -v >> lamp.log

echo "Creating PHP into file =========================================================" | tee -a lamp.log
echo "Creating PHP info file..........................................................." | tee -a lamp.log
echo "<?php phpinfo(); ?>" | sudo tee /var/www/html/info.php 
echo "Setting permissions for /var/www/html/..........................................." | tee -a lamp.log
sudo chown -R www-data:www-data /var/www/html >> lamp.log
sudo chmod -R 755 /var/www/html >> lamp.log
echo "LAMP stack installation and configuration completed successfully." | tee -a lamp.log
echo "You can test your PHP installation by visiting http://your_server_ip/info.php" | tee -a lamp .log
