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
my $file_out = "data.txt";
my $heading = "Report about file data.txt";

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

close $fh;

open($fh, ">", $file_out) or die "Could not open '$file_out'\n";

print $fh "$heading\n";
print $fh "-" x length $heading, "\n";
print $fh "minumum: $min\n";
print $fh "maximum: $max\n";
print $fh "total: $sum\n";
print $fh "count: $number_of_lines\n";
print $fh "average: $average\n";
