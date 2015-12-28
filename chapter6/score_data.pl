#!/usr/bin/env perl

use strict;
use warnings;

use Getopt::Long qw(GetOptions);


my $file = 'score_data.txt';
my %scores_data;

# deal with command line args
GetOptions("file=s" => \$file) or die "Usage: $0 [--file FILENAME]\n";

# read in file to hash
open(my $data, '<', $file) or die "Could not open '$file'\n";
my @temp_array = <$data>;
chomp(@temp_array);
foreach my $key (@temp_array) {
	my @split_input = split /,/, $key;
	$scores_data{$split_input[0]} = $split_input[1];	
}

# sort hash by key aka names
foreach my $key (sort keys %scores_data) {
	print "$key => $scores_data{$key}\n";
}
print "\n";
foreach my $key (sort hash_value_descending_num (keys(%scores_data))) {
	print "$key => $scores_data{$key}\n";
}
# function 
sub hash_value_descending_num {
	$scores_data{$b} <=> $scores_data{$a};
}
