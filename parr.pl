#!/usr/bin/perl

use strict;
use warnings;

sub print_elements_in_range {
    my ($range_start, $range_end, @array) = @_;

    foreach my $element (@array) {
        if ($element >= $range_start && $element <= $range_end) {
            print "$element ";
        }
    }
    print "\n";
}

print "Enter the start of the range: ";
my $start = <STDIN>;
chomp $start;

print "Enter the end of the range: ";
my $end = <STDIN>;
chomp $end;

print "Enter the array elements separated by space: ";
my $input = <STDIN>;
chomp $input;
my @array = split(' ', $input);

print_elements_in_range($start, $end, @array);
