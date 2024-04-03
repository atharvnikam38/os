#!/bin/bash

print_duplicate_lines() {

    echo "Enter the input:"

    input=$(cat)

    echo "$input" | sed '/^$/d' | sort | uniq -d
}

print_duplicate_lines
