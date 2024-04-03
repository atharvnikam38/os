#!/usr/bin/perl

use strict;
use warnings;

my @array;

print "Enter the size of the array: ";
my $size = <STDIN>;
chomp $size;

for (my $i = 0; $i < $size; $i++) {
    print "Enter element $i: ";
    my $element_input = <STDIN>;  
    chomp $element_input;
    push @array, $element_input;
}

print "Enter the lower bound of the range: ";
my $lower_bound_input = <STDIN>; 
chomp $lower_bound_input;
my $lower_bound = int($lower_bound_input);  

print "Enter the upper bound of the range: ";
my $upper_bound_input = <STDIN>;   
chomp $upper_bound_input;
my $upper_bound = int($upper_bound_input); 

print "Elements within the range $lower_bound - $upper_bound: ";
foreach my $element (@array) {
    if ($element >= $lower_bound && $element <= $upper_bound) {
        print "$element ";
    }
}
print "\n";
