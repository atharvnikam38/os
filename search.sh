#!/bin/bash

# Function to search for an element in a list
search_element() {
    # Prompt the user to enter the element to search
    echo "Enter the element to search:"
    read element

    # Check if the element is present in the list
    if [[ " ${list[@]} " =~ " $element " ]]; then
        echo "$element is present in the list."
    else
        echo "$element is not present in the list."
    fi
}

# Main code
# Define the list
list=("apple" "banana" "orange" "grape" "kiwi")

# Call the function to search for an element
search_element
