#!/bin/bash

# Function to calculate grade
calculate_grade() {

    echo "Enter marks obtained (out of 100):"
    read marks

    if [ "$marks" -lt 0 ] || [ "$marks" -gt 100 ]; then
        echo "Invalid marks! Marks should be between 0 and 100."
        return
    fi

    if [ "$marks" -ge 90 ]; then
        grade="A"
    elif [ "$marks" -ge 80 ]; then
        grade="B"
    elif [ "$marks" -ge 70 ]; then
        grade="C"
    elif [ "$marks" -ge 60 ]; then
        grade="D"
    else
        grade="F"
    fi

    echo "Grade: $grade"
}

# Call the function to calculate grade
calculate_grade
