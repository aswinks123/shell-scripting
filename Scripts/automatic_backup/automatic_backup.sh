#This script backups the data from one directory to another. To automate the back up add this scriot to crontab


#!/bin/bash

#Initital configuration
source_directory="/home/aswin/Desktop/shell-scripting/Scripts/automatic_backup"
backup_directory="/home/aswin/Desktop/shell-scripting/Scripts/"
backup_filename="backup_$(date +%Y%m%d_%H%M%S).tar.gz"

# Change to the parent directory of the source directory
cd "$(dirname "$source_directory")"

#Create backup
tar -czf "$backup_directory/$backup_filename" "$(basename "$source_directory")"


#Display the back up success message
echo "Backup created Successfully at : $backup_directory/$backup_filename"