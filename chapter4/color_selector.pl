#!/usr/bin/perl
use strict;
use warnings;

use Getopt::Long qw(GetOptions);

my $color;
my $flag; 
my $force;
my $file = 'colors.txt';
# deal with command line args
GetOptions("color=s" => \$color,
	   "force" => \$force,
	   "file=s" => \$file) 
	   or die "Usage: $0 [--color COLOR] [--force] [--file FILENAME]\n";
# read in file to fill colors array with colors
open(my $data, '<', $file) or die "Could not open '$file'\n";
my @colors = <$data>;
chomp(@colors);

# if no command line args ask user for input
if (not defined $color) {
	print "Please select a number:\n";
	foreach my $i (1..($#colors+1)) {
		print "$i) $colors[$i-1]\n";	
	}
	my $num = <STDIN>;
	chomp($num);
	if ($num != 0 and defined $colors[$num-1]) {
		$color = $colors[$num-1];	
	} else {
		print "Bad selection\n";
		exit;
	}
}
# check input 
if (not defined $force) {
	foreach my $i (0..$#colors) {
		if ($color eq $colors[$i]) {
			$flag = 1;	
		}
	}
	if (not defined $flag) {
		print "Bad input for [--color]\n";
		exit;
	}
}

print "The selected color is $color\n";
