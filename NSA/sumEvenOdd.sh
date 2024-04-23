#!bin/bash
echo -n "Enter the number : "
read num
sumeven=0
sumodd=0
counter=0
while [ $num -ne 0 ]
do
	r=`expr $num % 10`
	div=`expr $r % 2`
	if [ $div -eq 0 ]
	then
		sumeven=`expr $sumeven + $r`
	else
		sumodd=`expr $sumodd + $r`
		counter=`expr $counter + 1`
	fi
	num=`expr $num / 10`
done
avgodd=`expr $sumodd / $counter`
echo -n "Sum of even digits = $sumeven "
echo -n "Average of odd digits = "$avgodd