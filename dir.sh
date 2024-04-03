#!/bin/bash

check_and_create() {

    echo "Enter the directory/file path:"
    read path

    if [ -e "$path" ]; then
        echo "The directory/file '$path' already exists."
    else
        if [[ "$path" == */ ]]; then
            mkdir -p "$path"
            echo "Directory '$path' created successfully."
        else
            touch "$path"
            echo "File '$path' created successfully."
        fi
    fi
}

check_and_create
