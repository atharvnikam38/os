#!/bin/bash

display_current_directory() {
    echo "Current directory: $(pwd)"
}

display_directory_contents() {
    echo "Directory contents:"
    ls
}

create_and_copy_directory() {
    # Prompt the user to enter the name of the new directory
    echo "Enter the name of the new directory:"
    read new_dir_name

    mkdir "$new_dir_name" || { echo "Failed to create directory!"; return; }

    echo "Enter the contents for the new directory:"
    read contents

    echo "$contents" > "$new_dir_name/contents.txt"

    cp -r "$new_dir_name" "$HOME/"
    echo "Directory '$new_dir_name' copied to '$HOME/'."
}

# Main menu
while true; do
    echo "Menu:"
    echo "1. Display name of current directory"
    echo "2. Display list of directory contents"
    echo "3. Create another directory, write contents, and copy it to a suitable location in your home directory"
    echo "4. Exit"

    echo "Enter your choice:"
    read choice

    case $choice in
        1) display_current_directory ;;
        2) display_directory_contents ;;
        3) create_and_copy_directory ;;
        4) echo "Exiting..."; exit ;;
        *) echo "Invalid choice. Please enter a number between 1 and 4." ;;
    esac

    echo
done
