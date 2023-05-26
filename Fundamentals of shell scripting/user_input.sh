#!/bin/bash

#Basic operations related to user inputs

#input a variable in runtime
echo "Enter the name"
read name  #it read input from keyboard and save in variable
echo Entered name is $name

#Enter multiple inputs
echo "Enter 2 names"
read name1, name2  #Do not press enter press space for next name
echo Entered names is $name1, name2


#Enter input in same line for username and pass
echo "Enter your credentials"
read -p 'username: ' u_name  #it read input from keyboard and save in variable
echo "your username is $u_name"

#Enter data in the password field
read -sp 'password: '  passwords
echo   #To print a new line
echo "your password is $passwords" #Entered password will not be shown on terminal


#Input user input as an array and print it
echo "Enter the names:"
read -a names #Read as an array
echo "Names are : ${names[0]}, ${names[1]}" #printing the data based on index


#Enter data with out any variable
echo "Enter the names:"
read
echo "Names is : $REPLY" #By default the entered read data will be saved in REPLY variable



