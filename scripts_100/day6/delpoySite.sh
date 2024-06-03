#!/bin/bash
echo "Hello world"
pkg="zip unzip apache2"
systemctl start apache2
systemctl enable apache2
sudo apt install $pkg -y
wget https://www.tooplate.com/zip-templates/2135_mini_finance.zip 
unzip 2135_mini_finance.zip
ls -la
mv 2135_mini_finance/* /var/www/html/
if [ $? -eq 0 ]; then
	systemctl restart apache2
	echo "Deployed to the path... successfully..."
	rm -r 2135_mini_finance
	rm -r /home/shared_folder/scripts_100/day6/2135_mini_finance.*
	echo "Removed the downloaded files successfully"
else
	echo "Deployment Failed...."
fi



