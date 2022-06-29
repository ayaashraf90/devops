#!/bin/bash
data=$(<data.txt)
echo "1- The data of the file are:- "
echo "----------------------------"
echo "$data"
echo "**********************************************************"
number=`cut -f 3 -d " " data.txt`
readarray -t email <<<`cut -f 2 -d " " data.txt`
#readarray -t arr < data.txt
#echo "${email[@]}"
echo "2- The IDs number type are:- "
echo "----------------------------"
#for j in "${arr[@]}"; do
#email=`echo $j |cut -f 2 -d " "`
for i in $number 
do
if [ $(($i%2)) -eq 0 ]; then
echo the ID $i  is even
else
echo the ID $i  is odd
fi
done
#done
echo "**********************************************************"
#echo $data|grep -E '\.' 
echo "3- The FQDN email addresses are:- "
echo "----------------------------"
echo "`grep -E '\.'  data.txt | grep -E '@'` "
