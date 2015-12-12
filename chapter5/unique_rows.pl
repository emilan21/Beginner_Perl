#!/usr/bin/perl
use strict;
use warnings;

use Getopt::Long qw(GetOptions);

# display unique rows of a file
# deal with command line args
my $file;
my $file_out = "unique_after.txt";
my @split;
my @unique_alphs;
my @unique_nums;
my $alph_seen;
my $num_seen;
my $line;
GetOptions("file=s" => \$file) or die "Useage: $0 [--file file]\n";

# read in file
open(my $data, '<', $file) or die "Could not open '$file'\n";
while ($line = <$data>) {
	chomp $line;
	@split = split / /, $line;
	foreach my $c (@split) {
		if ($c ge 'A' and $c le 'Z') {
			if ($alph_seen ne $c) {
				push(@unique_alphs, $c);
				$alph_seen ;
			}
		} elsif ($c ge '0' and $c le '9') {
			push(@unique_nums, $c);
		} else {
			print "Not a letter or number!\n";	
		}
	}
}

foreach my $i (0..$#unique_alphs) {
	print "$unique_alphs[$i] $unique_nums[$i]\n";	
}
