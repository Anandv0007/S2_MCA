#!bin/bash
echo "Enter two numbers : "
read a b
if [ $a -gt $b ]
then
	echo "Largest number is : " $a
else
	echo " Largest number is : " $b
fi 