#!/usr/bin/env perl

use strict;
use warnings;

use Data::Dumper;

my %ini_hash;
my $properties;

# get file from command line
my $filename = shift or die "Usage: $0 filename\n";
open(my $fh, "<", $filename) or die "Could not open '$filename'\n";

while (my $line = <$fh>) {
	chomp $line;
	if ($line =~ /#/ or $line =~ /^$/) {
		next;
	}
	if ($line =~ qr/^\[(\w+)\]/) {
		$properties = $line;
		next;
	}
	(my $key, my $value) = split /\s*=\s*/, $line;
	$ini_hash{$properties}{$key} = $value;
}
print Dumper \%ini_hash;
