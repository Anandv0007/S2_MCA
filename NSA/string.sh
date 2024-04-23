#!bin/bash
echo -n "Enter first string : "
read s1
echo -n "Enter second string : "
read s2
echo -e "Enter your choice \n 1. Equal or not \n 2. Find length \n 3. Concatenate"
read op
case $op in
1)
	if [ $s1 = $s2 ]
	then
		echo "Strings are of same length"
	else
		echo "Strings are not of same length"
	fi
;;
2)
	if [ -z $s1 ]
	then
		echo "Length of first string is zero"
	else
		echo "Length of first string is not zero"
	fi
	if [ -z $s2 ]
	then
		echo "Length of second string is zero"
	else
		echo "Length of second string is not zero"
	fi
;;
3)
	s1+=$s2
	echo "Concatenated string is : "$s1
;;
*)
	echo "Invalid choice"
esac