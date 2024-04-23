read -p "Enter  password : " p1
read -p "Retype password : " p2
if [ $p1 != $p2 ]
then
	echo "Password Mismatch"
else
	echo "Password Valid"
fi
