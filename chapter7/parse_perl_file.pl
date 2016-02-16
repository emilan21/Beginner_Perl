#!/usr/bin/env perl
use strict;
use warnings;

my @varibles;
my $i = 0;  

# get file from command line
my $filename = shift or die "Usage: $0 filename\n";
open(my $fh, "<", $filename) or die "Could not open '$filename'\n";

while (my $line = <$fh>) {
	chomp $line;
	if ($line =~ /my\s\$.+/) {
		$varibles[$i] = $line;
	}else{
		next;
	}	

	$i++;
}

foreach my $loop (@varibles) {
	print $loop;
	print "\n";
}
