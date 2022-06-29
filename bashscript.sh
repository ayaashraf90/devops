#!/bin/bash
data=$(<data.txt)
echo "1- The data of the file are:- "
echo "----------------------------"
echo "$data"
echo "**********************************************************"
number=`cut -f 3 -d " " data.txt`
readarray -t email <<<`cut -f 2 -d " " data.txt`
echo "2- The IDs number type are:- "
echo "----------------------------"
for i in $number 
do
if [ $(($i%2)) -eq 0 ]; then
echo the ID $i  is even
else
echo the ID $i  is odd
fi
done
echo "**********************************************************"
 echo "3- The FQDN email addresses are:- "
echo "----------------------------"
echo "`grep -E '\.'  data.txt | grep -E '@'` "
