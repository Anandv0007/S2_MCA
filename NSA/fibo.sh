#!bin/bash
echo -n "Enter the limit : "
read n
a=0
b=1
if [ $n -eq 1 ]
then
	echo $a
elif [ $n -eq 2 ]
then 
	echo $a
	echo $b
else
	echo $a
	echo $b
for((i=2;i<n;i++))
do
	c=`expr $a + $b`
	echo $c
	a=$b
	b=$c
done
fi
