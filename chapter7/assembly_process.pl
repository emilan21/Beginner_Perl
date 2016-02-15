#!/usr/bin/env perl

use strict;
use warnings;

my %map = (
	R1 => 'R2',
	R2 => 'R3',
	R3 => 'R1',
);

my $regex = join "|", keys %map;
s/\b($regex)\b/$map{$1}/g;
