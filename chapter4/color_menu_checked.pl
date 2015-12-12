#!/usr/bin/perl
use strict;
use warnings;

use Scalar::Util qw(looks_like_number);

my $color;

my @colors = ("Blue", "Yellow", "Brown", "White");
print "Please select a number:\n";
foreach my $i (0..$#colors) {		# $#array_name - the larget index
	print "$i) $colors[$i]\n";	# $array_name[$counter] - array elements are scalar	
}

my $num = <STDIN>;
chomp($num);
if (looks_like_number($num) and defined $colors[$num]) {
	$color = $colors[$num];	
} else {
	print "Bad selection\n";
	exit;
}

print "The selected color is $color\n";
