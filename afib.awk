#!/usr/bin/awk -f

BEGIN {
    
    printf "Enter the number of terms in Fibonacci series: "
    getline num_terms < "-"
    
    first = 0
    second = 1
    count = 0
}

{
    printf "Fibonacci Series: "
    while (count < num_terms) {
        printf "%d ", first
        sum = first + second
        first = second
        second = sum
        count++
    }
    print ""
}
