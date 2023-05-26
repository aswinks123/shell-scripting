#Learn basic control statements in shell- if, if else, and if elif

#!/bin/bash


#If statement syntax

# if [condition]

# then
# 	statement
# fi



#Use if statement

count=10

if [ $count -gt 9 ]
then
	echo "true"
fi


#Using normal comparison symbols in if

count=10

if (( $count > 9 ))
then
	echo "true"
fi


#Checking equalitu of string (use single =)

word=abc

if [ $word = 'abc' ]
then
	echo 'matchs'
fi


#check string less than or greater than

word=a

if [[ $word < 'b' ]]
then
	echo 'yes'
fi


#IF ELSE


# if [condition]

# then
# 	statement
# else
# 	echo "Else part"
# fi


#Using else statement

count=10

if (( $count < 9 ))
then
	echo "true"
else
	echo "false"
fi


#if-elif

count=10

if (( $count < 16 ))
then
	echo "falsee"
elif (( $count < 5))
then
	echo 'truee'	
else
	echo "last statement"
fi




