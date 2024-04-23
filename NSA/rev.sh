#!/bin/bash

# Prompt the user to enter a string
echo "Enter a string: "
read input_string

# Initialize a variable to store the reversed string
reversed_string=""

# Iterate over each character in the input string in reverse order
for (( i=${#input_string}-1; i>=0; i-- )); do
    reversed_string="$reversed_string${input_string:$i:1}"
done

# Print the reversed string
echo "Reversed string: $reversed_string"
