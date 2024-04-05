
#!/usr/bin/perl

# Ask the user to input elements of an array
print "Enter elements of the array (separated by spaces): ";
my $input = <STDIN>;
chomp($input);

# Split the input string into an array
my @numbers = split(' ', $input);

#my @numbers = (5, 2, 9, 1, 7);
# Sort the array in ascending order
my @sorted_numbers = sort @numbers;

# Print the sorted array
print "Sorted Numbers: @sorted_numbers\n";
