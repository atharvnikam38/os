#!/usr/bin/perl

use strict;
use warnings;

my @array1;
my @array2;

print "Enter the size of the first array: ";
my $size1 = <STDIN>;
chomp $size1;

for (my $i = 0; $i < $size1; $i++) {
    print "Enter element $i of the first array: ";
    my $element = <STDIN>;
    chomp $element;
    push @array1, $element;
}

print "Enter the size of the second array: ";
my $size2 = <STDIN>;
chomp $size2;

for (my $i = 0; $i < $size2; $i++) {
    print "Enter element $i of the second array: ";
    my $element = <STDIN>;
    chomp $element;
    push @array2, $element;
}

my @merged_array = (@array1, @array2);

print "Merged array: ";
foreach my $element (@merged_array) {
    print "$element ";
}
print "\n";
