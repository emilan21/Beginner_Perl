#!/usr/bin/env perl

use strict;
use warnings;

# Sorts SNMP numbers by comparing the first number of each SNMP number first. If they are equal then 
# comparing the second number, etc...

my $file = "snmp.txt";
open(my $fh, '<', $file) or die "Could not open '$file'\n";
my @file = <$fh>;
chomp(@file);

my @res = sort {cmp_snmp($a, $b)} @file;
print join("\n", @res), "\n";

sub cmp_snmp {
	my ($first, $second) = @_;

	if ($first eq $second) {
		return 0;
	}

	my @F = split /\./, $first;
	my @S = split /\./, $second;

	for my $i (0..$#F) {
		if (not defined $S[$i]) {
			return 1;
		}

		if ($F[$i] < $S[$i]) {
			return -1;
		}

		if ($F[$i] > $S[$i]) {
			return 1;
		}
	}

	return -1;
}
