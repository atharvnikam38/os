#!/bin/bash

display_specific_files() {

    echo "Enter the directory path:"
    read directory_path
    echo "Enter the file extension (e.g., txt, sh, etc.):"
    read file_extension

    if [ ! -d "$directory_path" ]; then
        echo "Directory not found!"
        return
    fi

    echo "List of $file_extension files in $directory_path:"
    find "$directory_path" -type f -name "*.$file_extension" | egrep -o '[^/]*$'
}

display_specific_files
