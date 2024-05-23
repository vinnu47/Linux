#read a file with 20 lines txt. 
#It should print only 2 word from each line till the 20 lines with a message this is 2nd word in n line and if there is no word or text in that particular line. 
#It should also print an error mesage doest exist.

#!usr/bin/env bash


nline=$(cat text.txt | wc -l)
temp=1

while [ $temp -lt $nline ]
do
   awk '{if (NF >= 2) print $2 " 2nd word in $temp line"; else print "there is no 2nd word"}' text.txt | sed -n $temp\p >> output.txt
   temp=$((temp+1))
done




