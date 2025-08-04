#!/bin/bash

# Function to check if the number is Armstrong number
is_armstrong() {
    local num=$1
    if [[ ! "$num" =~ ^[0-9]+$ ]]; then
        echo "$num is not a valid number"
        return
    fi
    local sum=0
    local len=${#num}
    local n=$num
    while [[ $n -gt 0 ]]; do
        local digit=$((n % 10))
        local power=$((digit ** len))
        sum=$((sum + power))
        n=$((n / 10))
    done
    if [[ "$sum" -eq "$num" ]]; then
        echo "$num is an Armstrong number"
    else
        echo "$num is not an Armstrong number"
    fi
}

# Prompt user for input
echo "Enter a number to check if it is an Armstrong number:"
read number

# Call the function with the user's input
is_armstrong "$number"
