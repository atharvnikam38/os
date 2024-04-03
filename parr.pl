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

my @array = (1, 5, 9, 11, 15, 20, 25, 30);

# Define range
my $start = 10;
my $end = 25;

print_elements_in_range($start, $end, @array);
