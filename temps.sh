#!/bin/bash

fahrenheit_to_celsius() {
    local fahrenheit=$1
    local celsius=$(awk "BEGIN {printf \"%.2f\", ($fahrenheit - 32) * 5 / 9}")
    echo "$fahrenheit Fahrenheit is equal to $celsius Celsius"
}

# Main code
echo "Enter temperature in Fahrenheit:"
read fahrenheit

fahrenheit_to_celsius $fahrenheit
