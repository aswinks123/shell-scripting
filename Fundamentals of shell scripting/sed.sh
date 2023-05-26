
SYNTAX : sed 'action' filename


#========================Model 1: PRINTING====================

#Extract particular lines from a file
sed  -n '1p' paaa  #It print line 1

# Extract 1 and 5 lines
sed  -n '1p;5p' paaa 

#Print line 1 to 7 only
sed  -n '1,7p' filename

#Print last line
sed  -n '$p' filename  #$ is last line

#print multiple line ranges 
sed  -n '1,5p;10,15p' filename  #it print line 1to5 and 10 to 15


#===========================Model 2: FIND and REPLACE============

#Replace first occurence of root with ash
sed 's/root/ash/' filename

#Replace all occurence of root with ash
sed 's/root/ash/g' filename  # g is global change 

#Replace all occurence of root with ash
sed 's/ROOT/ash/gi' filename  # i is used to ignore case 

#Replace all occurence of root with ash from line 1 to 10
sed '1,10s/root/ash/g' filename

#Add a '#' to beginning of line number 5
sed '5s/^/#/g' filename # ^ means beginning

Note : add -i to make changes to file.
eg: sed -i 's/root/ash/' filename #with out i it only shows in screen


#===========================Model 3: DELETE LINES============

#Delete line 5 
sed -i '5d' filename

#Delete line 5 to 7
sed -i '5,7d' filename2

#Delete all lines except 5 to 7
sed -i '5,7!d' filename2 #  !d is used

#===========================Model 4: ADD new lines============

#Add content after line 5
sed '5a aswinks' filename2  # it adds aswinks after line 5

#Add new line in a specific line number
sed '5i aswinks' filename # i adds aswinks to line 5


