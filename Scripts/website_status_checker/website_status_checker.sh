#Shell script to check the live status of websites and save it to a csv file


#!/bin/bash

#Mentioning the list of websites to check

websites=(
    "www.google.com"
    "www.facebook.com"
    "www.yahoo.com"
    "www.aswinks.in"
    "www.invalidwebsite.cc"
    "www.abczzdsad.netd"
    "www.tcs.com"
)

#Create a CSV file to store the outputs

csv_file="website_status_tracker.csv"

#Creare a function that performs the operation

ping_website(){
    website="$1"
    status=$(ping -c 1 "$website" > /dev/null 2>&1 && echo "Success" || echo "Failed")
    timestamp=$(date +"%Y-%m-%d %H:%M:%S")
    echo "$timestamp,$website,$status" >> "$csv_file"
    

}


#Create the heading of the CSV file
echo  " Time,Website,Status" >"$csv_file"


#Loop through each website using for loop
echo " Website check started"
for website in "${websites[@]}"; do 
    ping_website "$website"
done
echo " Website checked successfully"
echo "Output saved in : $(pwd)/website_status_tracker.csv"