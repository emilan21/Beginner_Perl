#!/usr/bin/env perl
use strict;
use warnings;

my @varibles;
my $i = 0;  

# get file from command line
my $filename = shift or die "Usage: $0 filename\n";
open(my $fh, "<", $filename) or die "Could not open '$filename'\n";

while (my $line = <$fh>) {
	if ($line =~ /my/) {
		$varibles[$i] = split /\s*my \$\s*/, $line;
	}	

	$i++;
}

foreach my $y (0..@varibles) {
	print $varibles[$y] . "\n";
}
