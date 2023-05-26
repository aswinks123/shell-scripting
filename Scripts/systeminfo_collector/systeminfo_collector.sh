#!/bin/bash

# Get hostname
hostname=$(hostname)

# Get IP address
ip_address=$(hostname -I)

# Get CPU information
cpu_info=$(cat /proc/cpuinfo | grep "model name" | head -n 1 | awk -F: '{print $2}' | sed 's/^\s*//')

# Get memory usage
memory_total=$(free -h --si | awk '/^Mem:/ {print $2}')
memory_used=$(free -h --si | awk '/^Mem:/ {print $3}')
memory_percentage=$(free | awk '/^Mem:/ {printf("%.2f"), $3/$2 * 100}')

# Get disk usage
disk_usage=$(df -h --output=pcent / | sed '1d' | awk '{print $1}')

# Display system information
echo "System Information:"
echo "-------------------"
echo "Hostname: $hostname"
echo "IP Address: $ip_address"
echo "CPU: $cpu_info"
echo "Memory: $memory_used/$memory_total ($memory_percentage%)"
echo "Disk Usage: $disk_usage used"

