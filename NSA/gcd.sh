#!bin/bash
echo "Enter two number : "
read a b
if [ $a -gt $b ]
then
	m=$a
else
	m=$b
fi
for((i=1;i<=m;i++))
do
	x=`expr $a % $i`
	y=`expr $b % $i`
	if [ $x -eq 0 -a $y -eq 0 ]
	then
		gcd=$i
	fi
done
echo "GCD of $a and $b is " $gcd