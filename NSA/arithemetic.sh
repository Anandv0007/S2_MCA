#!bin/bash
echo -n "Enter first number : "
read num1
echo -n "Enter second number : "
read num2
sum=$((num1+num2))
sub=$((num1-num2))
mul=$((num1*num2))
echo "Sum = " $sum
echo "Difference = " $sub
echo "Product = " $mul
