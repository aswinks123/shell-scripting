#Script that takes an argument as file name and count the number of lines in tha file
#Created by Aswin KS


#!/bin/bash

#Check the file path is provided as argument

if [ $# -eq 0 ]; then
    echo "Error: Mention the file path as an argument"
    exit 1
fi

filename=$1

#Check whether the file exists
if [ ! -f "$filename" ]; then
    echo "File $filename not found!"
    exit 1
fi

#Count the number of lines
line_count=$(wc -l < "$filename")

echo "The file '$filename' contains '$line_count' lines"