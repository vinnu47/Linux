#Task 1 
#read a file with 20 lines txt. For each line it should print a message stating the this is line 1 and so on till 20 lines. 
#There should also be a condition if the file is more than 20 lines it give an message that it is too big and if the file is empty
#it should print file is empty.

#!/usr/bin/env bash
num=$(cat test1.txt | wc -l)
temp=1

if [ $num -gt 0 ] && [ $num -lt 20 ]
then
while [ $temp -lt $num ]
do
    n=$(head -$temp text | tail +$temp)
    echo $n this is line number $temp
    temp=$((temp+1))
done
elif [ $num -eq 0 ]
then
    echo " this file is empty! "
else
    echo " the file is too large. "
fi