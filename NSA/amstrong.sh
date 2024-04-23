#!bin/bash
a=0
sum=0
echo "Enter the number : "
read num
temp=$num
while [ $temp -ne 0 ]
do
	a=`expr $temp % 10`
	sum=`expr $sum + $a \* $a \* $a`
	temp=`expr $temp / 10`
done
if [ $num -eq $sum ]
then
	echo "The number is amstrong"
else
	echo "The number is not amstrong"
fi