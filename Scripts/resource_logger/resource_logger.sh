#This script logs the resource usage to a csv file periodically


#!/bin/bash

# Set the monitoring interval (in seconds)
interval=5

# Set the log file path
log_file="/home/aswin/Desktop/shell-scripting/Scripts/resource_logger/resource_monitor.log"

# Function to get current timestamp
get_timestamp() {
    date +"%Y-%m-%d %H:%M:%S"
}

# Function to monitor system resources
monitor_resources() {
    while true; do
        timestamp=$(get_timestamp)
        cpu_usage=$(top -bn1 | awk '/%Cpu/ {print $2}')
        memory_usage=$(free -m | awk '/Mem:/ {print $3}')
        disk_usage=$(df -h --output=pcent / | sed '1d' | awk '{print $1}')

        echo "$timestamp,CPU: $cpu_usage%,Memory: $memory_usage MB,Disk: $disk_usage" >> "$log_file.csv"
        
        sleep "$interval"
        echo "Logging...."
    done
}

# Start monitoring resources function
monitor_resources
