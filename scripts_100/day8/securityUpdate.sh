#!/bin/bash
echo "Hello world"
date=$(date +"%Y-%m-%d %H:%M:%S.%3N")
LOG_FILE="/var/log/security_update.log"

echo "Starting the update, current date is $date" | tee -a $LOG_FILE

echo "Checking for updates....." | tee -a $LOG_FILE
sudo apt update >> $LOG_FILE 

echo "Upgrading the updates......" | tee -a $LOG_FILE
sudo apt upgrade -y >> $LOG_FILE 

echo "Update and upgrade finished at $date" | tee -a $LOG_FILE

