#!/usr/bin/perl
use strict;
use warnings;

use Getopt::Long qw(GetOptions);

my $color;
my $flag; 
my $force;
my %colors;
my @split_input;
my $file = 'colors.txt';
# deal with command line args
GetOptions("color=s" => \$color,
	   "force" => \$force,
	   "file=s" => \$file) 
	   or die "Usage: $0 [--color COLOR] [--force] [--file FILENAME]\n";
# read in file to fill colors array with colors
open(my $data, '<', $file) or die "Could not open '$file'\n";
my @temp_array = <$data>;
chomp(@temp_array);
foreach my $key (@temp_array) {
	@split_input = split / /, $key;
	$colors{$split_input[0]} = $split_input[1];
}

# if no command line args ask user for input
if (not defined $color) {
	print "Please select a letter:\n";
	foreach my $key (sort keys %colors) {
		print "$colors{$key}) $key\n";	
	}
	my $letter = <STDIN>;
	chomp($letter);
	my %rcolors = reverse %colors;
	print "The selected color is $rcolors{$letter}\n";
}
