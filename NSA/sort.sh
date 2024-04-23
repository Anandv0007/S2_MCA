#!bin/bash
echo -n "Enter the filename : "
read fname
echo "Enter five numbers and ^d on exit "
cat > $fname
sort $fname > sortfile
echo "Unsorted file"
cat $fname
echo "Sorted file"
cat sortfile