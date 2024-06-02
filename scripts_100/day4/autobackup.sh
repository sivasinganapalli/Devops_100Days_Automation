#!/bin/bash
echo "Hello world"
current_date=$(date "+%Y-%m-%d_%H-%M-%S")
echo $current_date
scp -r /home/shared_folder/scripts_100/day4/logfile root@web03:/tmp/logsfile_$current_date
if [ $? -eq 0 ]; then
	echo "backup_successfull......"
else
	echo "backup_incomplete....."
fi
