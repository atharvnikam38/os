#!/bin/bash

# Function to calculate simple interest
calculate_simple_interest() {
    local principal=$1
    local rate=$2
    local time=$3

    local interest=$(awk "BEGIN {printf \"%.2f\", $principal * $rate * $time / 100}")
    local amount=$(awk "BEGIN {printf \"%.2f\", $principal + $interest}")

    echo "Simple Interest: $interest"
    echo "Total Amount: $amount"
}

# Function to calculate compound interest
calculate_compound_interest() {
    local principal=$1
    local rate=$2
    local times_compounded=$3
    local time=$4

    local amount=$(awk "BEGIN {printf \"%.2f\", $principal * (1 + $rate / $times_compounded) ^ ($times_compounded * $time)}")
    local interest=$(awk "BEGIN {printf \"%.2f\", $amount - $principal}")

    echo "Compound Interest: $interest"
    echo "Total Amount: $amount"
}

# Main code
echo "Choose the type of interest calculation:"
echo "1. Simple Interest"
echo "2. Compound Interest"
read choice

case $choice in
    1)
        echo "Enter principal amount:"
        read principal
        echo "Enter rate of interest:"
        read rate
        echo "Enter time period (in years):"
        read time

        calculate_simple_interest $principal $rate $time
        ;;
    2)
        echo "Enter principal amount:"
        read principal
        echo "Enter annual interest rate:"
        read rate
        echo "Enter number of times the interest is compounded per year:"
        read times_compounded
        echo "Enter time period (in years):"
        read time

        calculate_compound_interest $principal $rate $times_compounded $time
        ;;
    *)
        echo "Invalid choice"
        ;;
esac
