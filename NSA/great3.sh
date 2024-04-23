read -p "Enter first number : " a
read -p "Enter second number : " b
read -p "Enter third number : " c
if [ $a -gt $b ]
then
	if [ $c -gt $a ]
	then
		echo "$c is greater"
	else
		echo "$a is greater"
	fi
elif [ $b -gt $c ]
then
	echo "$b is greater"
else
	echo "$c is greater"
fi
	
