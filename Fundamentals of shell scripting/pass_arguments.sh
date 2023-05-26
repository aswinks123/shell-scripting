#!/bin/bash


#pass arguments are stored in these variables.

echo $0 $1 $2 $3  # $0 is the name of the script file itself

#Pass arguments and store in an array

args=("$@") #it stores all the arguments provided to the script
echo ${args[0]} ${args[1]}


#print all the arguments

echo $@

#print number of arguments passed to script

echo $#
