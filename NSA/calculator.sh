#!bin/bash
echo -n "Enter first number : "
read a
echo -n "Enter second number : "
read b
echo -n "Enter the operation : "
read op
case $op in
+)
	res=$((a+b))
	echo "Sum = " $res
;;
-)
	res=$((a-b))
	echo "Difference = "$res
;;
\*)
	res=$((a*b))
	echo "Product = "$res
;;
/)
	res=$((a/b))
	echo 	"Quotient = "$res
;;
*)
	echo "Invalid"
esac
