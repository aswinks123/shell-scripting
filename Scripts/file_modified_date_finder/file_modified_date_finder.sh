#Script to find the files that are modified before a given date in days
#Created by : Aswin KS
#------------------------------------------------------------------------------

#!/bin/bash


#Accept the location to search
workdir=$(pwd)
read -p "Enter the location to search the files (Enter for current dir):" loc

if  [[ -z "$loc" ]]; then
    target_directory=$workdir
else
    target_directory=$loc

fi 
echo "How much old files you want to find? (Enter in days): "
read file_modified_day
if  [[ -z "$file_modified_day" ]]; then
    echo "Invalid day Entered!"
else
        
    #Finding the files
    find "$target_directory" -type f -mtime +"$file_modified_day" -exec stat --format="%n %y" {} + | awk '{print $2,":" ,$1}'

fi 


