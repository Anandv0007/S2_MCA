#!bin/bash
echo -n "Enter a number : "
read num
rev=0
while [ $num -ne 0 ]
do
	r=`expr $num % 10`
	rev=`expr $rev \* 10 + $r`
	num=`expr $num / 10`
done
echo -n "Reverse of the number is : " $rev