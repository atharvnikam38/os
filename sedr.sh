#!/bin/bash

replace_word_in_file() {

    echo "Enter the filename:"
    read filename
    echo "Enter the word to replace:"
    read old_word
    echo "Enter the new word:"
    read new_word

    if [ ! -f "$filename" ]; then
        echo "File not found!"
        return
    fi

    
    sed -i "s/$old_word/$new_word/g" "$filename"
    echo "Occurrences of '$old_word' replaced with '$new_word' in $filename."
}

replace_word_in_file
