#!/bin/bash

# Function to convert base 5 to decimal
base5_to_decimal() {
    local base5=$1
    if [[ ! "$base5" =~ ^[0-4]+$ ]]; then
        echo "Invalid base 5 number"
        return
    fi
    local decimal=0
    local len=${#base5}
    for (( i=0; i<$len; i++ )); do
        local digit=${base5:$i:1}
        local power=$((len - i - 1))
        decimal=$((decimal + digit * (5 ** power)))
    done
    echo "Decimal of base 5 number $base5: $decimal"
}

# Prompt user for input
echo "Enter a base 5 number to convert to decimal:"
read base5

# Call the function with the user's input
base5_to_decimal "$base5"
