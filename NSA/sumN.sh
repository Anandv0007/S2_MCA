#!bin/bash
echo -n "Enter the limit : "
read n
echo "Enter $n numbers"
sum=0
i=0
while [ $i -le $n ]
do
	read num
	sum=`expr $sum + $num`
	i=$((i+1))
done
echo $sum