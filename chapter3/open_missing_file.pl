#!/usr/bin/perl
use strict;
use warnings;

if (open my $fh, '<', "nosuch") {
	# should do here something	
} else {
	warn $!;	
}
