AWK Pattern Operations

SYNTAX:

awk options 'pattern/condition' {action}' filename    
					or 
comamnd | awk options 'pattern/condition' {action}' 



#Open the entire content of a file using awk
awk '{print}' <filename>

#Print the lines with the name root
awk '/root/ {print}' <filename>

#Print the first and forth column of the file
awk '{print $1,$4}' <filename>   #$0 means full content

#Print the line numbers along wit data
awk '{print NR, $1, $2}' <filename>  #NR used to print line number

#Print the first and "LAST" column use NF
 awk '{print $1, $NF}' <filename>  #NF used to print last column

#print lines from specific row
wk 'NR==3, NR==6 {print NR,$0}' <filename>  #Print lines from 3 to 6

#Print - between the data
awk '{print NR,"-"$0}' <filename>
#sample output
1 -root:x:0:0:root:/root:/bin/bash
2 -daemon:x:1:1:daemon:/usr/sbin:/usr/sbin/nologin

#Print lines with length greater than 10 (includes white space)
awk 'length($0)>10'  <filename> 

#Print square of numbers using AWK
awk 'BEGIN {for (i=1;i<=6;i++) print "square of", i , "is" i*i;}'  

#print only the field having clear in 2nd field
awk '$2 ~ /clear/{print $0}' datafil


#Change the output field seperator to @@
awk 'BEGIN{OFS="@@"}{print $1,$2,$3}' datafile

#Change output record seperator from \n to :
wk 'BEGIN{ORS=":"}{print $1,$2,$3}' datafile 


#using condition statement in AWK (if)
wk '{if ($4 > 40000)print $0;else print "hai"}' datafile 

#Built in function

#To convert data to upper
awk '{print toupper($0)}' datafile 

#To print the length of records
awk '{print length($0)}' datafile


#print the column based on delimiter
wk -F ':' '{print $1}' filename  # It print first column based on delimiter :


