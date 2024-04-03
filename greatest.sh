#!/bin/bash

find_largest() {
    local largest=$1

    if [ $2 -gt $largest ]; then
        largest=$2
    fi

    if [ $3 -gt $largest ]; then
        largest=$3
    fi

    echo "Largest number: $largest"
}

# Main code
echo "Enter three integer numbers separated by space:"
read num1 num2 num3

find_largest $num1 $num2 $num3
