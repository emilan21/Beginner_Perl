#!/usr/bin/perl
use strict;
use warnings;

# @ARGV - all the arguments on the command line
# $ARGV[0] - the first argument
# $0 - name of the program

my $color;
if (defined $ARGV[0]) {
	$color = $ARGV[0];	
}

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
