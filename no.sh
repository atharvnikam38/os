#!/bin/bash

check_even_odd() {
    if (( $1 % 2 == 0 )); then
        echo "$1 is even."
    else
        echo "$1 is odd."
    fi
}

check_prime() {
    if [ $1 -lt 2 ]; then
        echo "$1 is not prime."
        return
    fi

    for (( i=2; i*i<=$1; i++ )); do
        if (( $1 % i == 0 )); then
            echo "$1 is not prime."
            return
        fi
    done

    echo "$1 is prime."
}

check_palindrome() {
    reverse=0
    temp=$1
    while [ $temp -gt 0 ]; do
        remainder=$(( $temp % 10 ))
        reverse=$(( $reverse * 10 + $remainder ))
        temp=$(( $temp / 10 ))
    done
    if [ $1 -eq $reverse ]; then
        echo "$1 is a palindrome."
    else
        echo "$1 is not a palindrome."
    fi
}

check_armstrong() {
    num=$1
    sum=0
    while [ $num -gt 0 ]; do
        digit=$(( $num % 10 ))
        sum=$(( $sum + $digit * $digit * $digit ))
        num=$(( $num / 10 ))
    done
    if [ $1 -eq $sum ]; then
        echo "$1 is an Armstrong number."
    else
        echo "$1 is not an Armstrong number."
    fi
}

# Main menu
while true; do
    echo "Menu:"
    echo "1. Check if number is even/odd"
    echo "2. Check if number is prime"
    echo "3. Check if number is palindrome"
    echo "4. Check if number is Armstrong"
    echo "5. Exit"

    echo "Enter your choice:"
    read choice

    case $choice in
        1) echo "Enter a number:"; read num; check_even_odd $num ;;
        2) echo "Enter a number:"; read num; check_prime $num ;;
        3) echo "Enter a number:"; read num; check_palindrome $num ;;
        4) echo "Enter a number:"; read num; check_armstrong $num ;;
        5) echo "Exiting..."; exit ;;
        *) echo "Invalid choice. Please enter a number between 1 and 5." ;;
    esac

    echo
done
