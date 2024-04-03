#!/usr/bin/awk -f
BEGIN {
 printf "Enter the number of terms for Fibonacci series: "
 getline n_terms < "-"
 printf "Fibonacci series with %d terms:\n", n_terms

 fib[0] = 0
 fib[1] = 1
 printf "%d\n%d\n", fib[0], fib[1]
 for (i = 2; i < n_terms; i++) {
 fib[i] = fib[i - 1] + fib[i - 2]
 printf "%d\n", fib[i]
 }
}
