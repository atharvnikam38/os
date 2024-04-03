#!/bin/bash

calculate_simple_interest() {
    local principal=$1
    local rate=$2
    local time=$3

    local interest=$(awk "BEGIN {printf \"%.2f\", $principal * $rate * $time / 100}")
    local amount=$(awk "BEGIN {printf \"%.2f\", $principal + $interest}")

    echo "Simple Interest: $interest"
    echo "Total Amount: $amount"
}

calculate_compound_interest() {
    local principal=$1
    local rate=$2
    local time=$3

    local amount=$(awk "BEGIN {printf \"%.2f\", $principal * (1 + $rate / 100) ^ $time}")

    local interest=$(awk "BEGIN {printf \"%.2f\", $amount - $principal}")

    echo "Compound Interest: $interest"
    echo "Total Amount: $amount"
}

# Main code
echo "Enter principal amount:"
read principal
echo "Enter rate of interest:"
read rate
echo "Enter time period (in years):"
read time

echo "Select calculation type:"
echo "1. Simple Interest"
echo "2. Compound Interest"
read choice

case $choice in
    1)
        calculate_simple_interest "$principal" "$rate" "$time"
        ;;
    2)
        calculate_compound_interest "$principal" "$rate" "$time"
        ;;
    *)
        echo "Invalid choice"
        ;;
esac
