#!/bin/bash

perform_operation() {
    local num1=$1
    local num2=$2
    local operation=$3
    local result=0

    case $operation in
        "+")
            result=$((num1 + num2))
            ;;
        "-")
            result=$((num1 - num2))
            ;;
        "*")
            result=$((num1 * num2))
            ;;
        "/")
            result=$(awk "BEGIN {printf \"%.2f\", $num1 / $num2}")
            ;;
        *)
            echo "Invalid operation"
            return 1
            ;;
    esac

    echo "Result of $num1 $operation $num2 is: $result"
}

# Main code
echo "Enter first number:"
read num1
echo "Enter second number:"
read num2
echo "Enter operation (+, -, *, /):"
read operation

perform_operation "$num1" "$num2" "$operation"
