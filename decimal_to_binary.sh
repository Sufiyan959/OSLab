#!/bin/bash

# Function to convert decimal to binary
decimal_to_binary() {
    local num=$1
    if [[ ! "$num" =~ ^[0-9]+$ ]]; then
        echo "Invalid input for binary conversion"
        return
    fi
    echo "Binary of $num: $(echo "obase=2; $num" | bc)"
}

# Prompt user for input
echo "Enter a decimal number to convert to binary:"
read number

# Call the function with the user's input
decimal_to_binary "$number"
