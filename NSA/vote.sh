read -p "Enter your age : " age
if [ $age -ge 18 ]
then
	echo "Eligible for voting"
else
	echo "Not eligible for voting"
fi
