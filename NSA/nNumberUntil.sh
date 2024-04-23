#!bin/bash
echo -n "Enter the limit : "
read n
echo "First $n numbers are"
i=1
until [ $i -gt $n ]
do
	echo $i
	i=$((i+1))
done