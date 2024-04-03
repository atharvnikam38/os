#!/bin/bash

display_file_stats() {
    echo "Enter the filename:"
    read filename

    if [ ! -f "$filename" ]; then
        echo "File not found!"
        return
    fi

    word_count=$(grep -o '\w\+' "$filename" | wc -w)
    char_count=$(grep -o '.' "$filename" | wc -c)
    line_count=$(grep -c '^' "$filename")

    echo "Number of words: $word_count"
    echo "Number of characters: $char_count"
    echo "Number of lines: $line_count"
}

display_file_stats
