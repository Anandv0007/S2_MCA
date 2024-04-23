#!bin/bash
echo -n "Enter first number : "
read num1
echo -n "Enter second number : "
read num2
sum=`expr $num1 + $num2`
echo -n "Sum = " $sum