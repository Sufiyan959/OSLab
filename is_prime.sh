#!/bin/bash

# Function to check if the number is prime
is_prime() {
    local num=$1
    if [[ ! "$num" =~ ^[0-9]+$ || "$num" -le 1 ]]; then
        echo "$num is not a prime number (invalid input)"
        return
    fi
    for (( i=2; i*i<=num; i++ )); do
        if (( num % i == 0 )); then
            echo "$num is not a prime number"
            return
        fi
    done
    echo "$num is a prime number"
}

# Prompt user for input
echo "Enter a number to check if it is prime:"
read number

# Call the function with the user's input
is_prime "$number"

