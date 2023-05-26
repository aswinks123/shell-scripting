#Script to find the files greater than a specified value in a specified location
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
echo "Enter the minimum file size to search (G,M): "
read filesize
if  [[ -z "$filesize" ]]; then
    echo "Invalid size Entered!"
else
    target_directory=$loc

    minimum_size=$filesize

    #Finding the files
    find "$target_directory" -type f -size +"$minimum_size" -exec du -h {} +

fi 


