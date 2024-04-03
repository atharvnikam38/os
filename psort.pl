#!/usr/bin/perl

use strict;
use warnings;

print "Enter the size of the array: ";
my $size = <STDIN>;
chomp $size;

my @array;

for (my $i = 0; $i < $size; $i++) {
    print "Enter element $i: ";
    my $element = <STDIN>;
    chomp $element;
    push @array, $element;
}

@array = sort { $a <=> $b } @array;

print "Sorted array: ";
foreach my $element (@array) {
    print "$element ";
}
print "\n";
