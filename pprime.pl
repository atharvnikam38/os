#!/usr/bin/perl

use strict;
use warnings;

sub is_prime {
    my $number = shift;
    return 0 if $number <= 1;  

    for (my $i = 2; $i * $i <= $number; $i++) {
        return 0 if $number % $i == 0;  
    }
    return 1; 
}

# Main code
print "Enter a number: ";
my $num = <STDIN>;
chomp $num;

if (is_prime($num)) {
    print "$num is a prime number\n";
} else {
    print "$num is not a prime number\n";
}
