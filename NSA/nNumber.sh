#!bin/bash
echo -n "Enter the limit : "
read n 
echo "First $n numbers are"
i=1
while [ $i -le $n ]
do
	echo $i
	i=`expr $i + 1`
done