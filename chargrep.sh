#!/bin/bash

# Check if file path is provided as an argument
if [ $# -eq 0 ]; then
    echo "Usage: $0 <file>"
    exit 1
fi

file="$1"

# Use grep command to count characters, words, and lines
num_chars=$(wc -m < "$file")
num_words=$(wc -w < "$file")
num_lines=$(wc -l < "$file")

echo "Number of characters: $num_chars"
echo "Number of words: $num_words"
echo "Number of lines: $num_lines"
