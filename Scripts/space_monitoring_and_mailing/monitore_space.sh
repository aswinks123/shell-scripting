#Script that checks the disk space usage of a directory and notify if it exceeds a defined limit
#Created by Aswin KS


#!/bin/bash

#Provide directory to monitor
directory="$(pwd)"

max_size=5  #in kb

disk_usage=$(du -sk "$directory" | awk '{print $1}')

if [ $disk_usage -gt $max_size ]; then 
    message="Disk Usage Exceeded the limit"
    echo "$message"
fi