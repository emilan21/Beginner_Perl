#!/usr/bin/env perl

use strict;
use warnings;

my $number = 0;
my $is_number = 0;

print "Enter a number: ";
$number = <STDIN>;
chomp($number);
$is_number = check_num($number);
if ($is_number eq 1) {
	print "$number\n";
}

sub check_num {
	if ($_[0] !~ /^\d+$/) {
		return 0;
	} else {
		return 1;
	}
}
