#!/bin/bash

is_leap_year() {
    local year=$1

    if [ $((year % 4)) -eq 0 ] && [ $((year % 100)) -ne 0 ] || [ $((year % 400)) -eq 0 ]; then
        echo "$year is a leap year"
    else
        echo "$year is not a leap year"
    fi
}

# Main code
echo "Enter a year:"
read year

is_leap_year $year
