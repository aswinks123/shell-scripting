#Script that renames all files in a  directory by adding a prefix to it
# Usage <script name> <directory> <prefix>
#Created by Aswin KS

#!/bin/bash

#Check whether directory and prefix are provided as an argument

if [ $# -ne 2 ]; then
    echo " Invalid: Usage <script name> <directory> <prefix> " 
    exit 1
fi

directory=$1
prefix=$2

# Check if directory exists
if [ ! -d  "$directory" ]; then
    echo "Invalid directory"
    exit 1
fi

# Itetrate each file and add the prefix

for file in "$directory"/*; do
        if [ -f "$file" ]; then

            filename=$(basename "$file")

            #Set new filename
            new_filename="$prefix$filename"

            #Rename thefile
            mv "$file" "$directory/$new_filename"

            echo "Renamed '$filename' to '$new_filename'"
        fi
done