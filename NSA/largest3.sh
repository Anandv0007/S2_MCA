#!bin/bash
echo "Enter three numbers : "
read a b c
if [ $a -gt $b ]
then
	if [ $a -gt $c ]
	then
		echo "Largest number is : " $a
	else
		echo "Largest number is : "$c
	fi
elif [ $b -gt $c ]
then
	echo "Largest number is : "$b
else
	echo "Largest number is : " $c
fi
	