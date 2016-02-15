#!/usr/bin/env perl

#use strict;
#use warnings;

use Data::Dumper;

my @time_section;
my $count = 0;
my $count_2 = 1;

# get file from command line
my $filename = shift or die "Usage: $0 filename\n";
open(my $fh, "<", $filename) or die "Could not open '$filename'\n";

while (my $line = <$fh>) {
	chomp $line;
	if ($line ne undef) {
		my ($key, $value) = split / /, $line, 2;
		$time_section[$count] = $key;
		$time_section[$count_2] = $value;
		$count += 2;
		$count_2 += 2;
	}	
}

my $i = 0; 
my $y = 1;
while ($i <= $#time_section) {
	print "$time_section[$i] - $time_section[$i+2] $time_section[$y]\n";
	$i += 2;
	$y += 2;
}
