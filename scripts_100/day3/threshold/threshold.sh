#!/bin/bash
echo "Hello World"

threshold_value=30

echo $threshold_value

current_size=$(du -hb logs/ | awk -F' ' '{print $1}')
echo $current_size

if [ $current_size -gt $threshold_value ]; then
	echo "The current file size is $current_size which is greater than the threshold value $threshold_value ........"
	echo "Sending NOtification..."
else
	echo "The current file size is $current_size  is not greater than the threshold value $threshold_value ........"
fi

#if [ $current_size -gt $threshold_value ]; then
#    echo "The current file size is $current_size which is greater than the threshold value $threshold_value ........"
#    echo "Sending notification..."
#else
#    echo "The current file size is $current_size which is not greater than the threshold value $threshold_value ........"
#fi



