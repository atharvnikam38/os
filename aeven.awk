#!/usr/bin/awk -f

BEGIN {
    # Prompt user to enter range
    printf "Enter the start of the range: "
    getline start < "-"
    printf "Enter the end of the range: "
    getline end < "-"
}

{
    for (i = start; i <= end; i++) {
        # Check if the number is even
        if (i % 2 == 0) {
            print i;
        }
    }
}
