#!/bin/bash

# Function to convert decimal to base 5
decimal_to_base5() {
    local num=$1
    if [[ ! "$num" =~ ^[0-9]+$ ]]; then
        echo "Invalid input for base 5 conversion"
        return
    fi
    local result=""
    local n=$num
    while [[ $n -gt 0 ]]; do
        result=$((n % 5))$result
        n=$((n / 5))
    done
    echo "Base 5 of $num: $result"
}

# Prompt user for input
echo "Enter a decimal number to convert to base 5:"
read number

# Call the function with the user's input
decimal_to_base5 "$number"
