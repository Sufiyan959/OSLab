#!/bin/bash

# Function to check if the number is a palindrome
is_palindrome() {
    local num=$1
    if [[ ! "$num" =~ ^[0-9]+$ ]]; then
        echo "$num is not a valid number"
        return
    fi
    local rev=$(echo $num | rev)
    if [[ "$num" == "$rev" ]]; then
        echo "$num is a palindrome"
    else
        echo "$num is not a palindrome"
    fi
}

# Prompt user for input
echo "Enter a number to check if it is a palindrome:"
read number

# Call the function with the user's input
is_palindrome "$number"
