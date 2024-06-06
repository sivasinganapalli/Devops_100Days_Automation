#!/bin/bash

charset="A-Za-z0-9@#\$%\^&\*\(\)_+"
#echo $charset
pass_Path="password"
password=$(head /dev/urandom | tr -dc "$charset" | head -c 16)
if [ $? -eq 0 ]; then
	echo "$password" > $pass_Path
	echo "Password is created successfully and moved to path $pass_Path , pls check....."
else
	echo "Error while creating password , please check the script...."
fi

