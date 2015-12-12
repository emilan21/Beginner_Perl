#!/usr/bin/perl
use strict;
use warnings;

# given a file with a number on each row, prin the sum of the numbers

my $sum = 0;
my $filename = "numbers.txt";
my $min = 0;
my $max = 0;
my $average;
my $number_of_lines;

open(my $fh, "<", $filename) or die "Could not open '$filename'\n";
while (my $line = <$fh>) {
	chomp $line;
	if ($max < $line) {
		$max = $line;					
	}
	if ($min > $line) {
		$min = $line;	
	}
	$sum += $line;	
	$number_of_lines++;
}

$average = $sum / $number_of_lines;

print "The total value is $sum\n";
print "The smallest number in the file is $min\n";
print "The largest number in the file is $max\n";
print "The average is $average\n";
