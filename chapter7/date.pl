#!/usr/bin/env perl

use strict;
use warnings;

my %dates = (
	'2010-7-5' => '2010-07-05',
	'2010-07-5' => '2010-07-05',
	'2010-07-05' => '2010-07-05',
	'2010-7-15' => '2010-07-15',
);

foreach my $in (sort keys %dates) {
	my $date = $in;

	$date =~ s/-(\d)\b/-0$1/g;

	printf "	old: %-12s\n", $in;
	printf "	new: $date\n";
	printf "   expected: $dates{$in}\n\n";
}
