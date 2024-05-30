#!/bin/bash

echo "#########################################################################" >> logs.txt
date=$(date '+%Y-%m-%d %H:%M:%S') 
echo $date >> logs.txt

out_file="install_log_$date.txt"

echo "#########################################################################" >> logs.txt
#update package lists 
echo "updating the package lists"
sudo apt update >> logs.txt 

#Install Git
sudo apt install git -y >> logs.txt

#install python
sudo apt install python3 python3-pip -y >> logs.txt 

#mv out_file /home/shared_folder/scripts_100/day2 

echo "logged the results......"
echo "#########################################################################" >> logs.txt

