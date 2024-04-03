#!/bin/bash

add() {
    echo "Enter first number:"
    read num1
    echo "Enter second number:"
    read num2
    result=$(echo "$num1 + $num2" | bc)
    echo "Result: $result"
}

subtract() {
    echo "Enter first number:"
    read num1
    echo "Enter second number:"
    read num2
    result=$(echo "$num1 - $num2" | bc)
    echo "Result: $result"
}

multiply() {
    echo "Enter first number:"
    read num1
    echo "Enter second number:"
    read num2
    result=$(echo "$num1 * $num2" | bc)
    echo "Result: $result"
}

divide() {
    echo "Enter dividend:"
    read dividend
    echo "Enter divisor:"
    read divisor
    result=$(echo "scale=2; $dividend / $divisor" | bc)
    echo "Result: $result"
}

# Main menu
while true; do
    echo "Menu:"
    echo "1. Addition"
    echo "2. Subtraction"
    echo "3. Multiplication"
    echo "4. Division"
    echo "5. Exit"

    echo "Enter your choice:"
    read choice

    case $choice in
        1) add ;;
        2) subtract ;;
        3) multiply ;;
        4) divide ;;
        5) echo "Exiting..."; exit ;;
        *) echo "Invalid choice. Please enter a number between 1 and 5." ;;
    esac

    echo
done
