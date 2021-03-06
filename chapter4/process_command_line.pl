#!/usr/bin/perl
use strict;
use warnings;

use Getopt::Long qw(GetOptions);

my $color;
GetOptions("color=s" => \$color) or die "Usage: $0 [--color COLOR]\n";

my @colors = qw(Blue Yellow Brown White);
if (not defined $color) {
	print "Please select a number:\n";
	foreach my $i (0..$#colors) {
		print "$i) $colors[$i]\n";	
	}
	my $num = <STDIN>;
	chomp($num);
	if (defined $colors[$num]) {
		$color = $colors[$num];	
	} else {
		print "Bad selection\n";
		exit;
	}
}

print "The selected color is $color\n";
