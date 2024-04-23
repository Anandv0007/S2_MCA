#!bin/bash
echo -n "Enter the limit : "
read n
echo "First $n numbers are"
for((i=1;i<=n;i++))
do 
	echo $i
done