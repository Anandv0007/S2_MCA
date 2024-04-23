#!bin/bash
echo -n "Enter the limit : "
read n
i=1
sum=0
while [ $i -le $n ]
do
	sum=`expr $sum + $i`
	i=$((i+1))
done
echo "Sum = " $sum