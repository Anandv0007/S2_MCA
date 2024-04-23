echo -n "Enter the name of the student : "
read name
echo "Enter the register number of the student : "
read rnum
echo "Enter all the four marks of the student named $name with register number $rnum "
read m1 m2 m3 m4
if [ $m1 -gt 40 -a $m2 -gt 40 -a $m3 -gt 40 -a $m4 -gt 40 ]
then
	total=`expr $m1 + $m2 + $m3 + $m4`
	echo "Total mark is : " $total
	echo "Result : PASSED"
else
	echo "Result : FAILED"
fi