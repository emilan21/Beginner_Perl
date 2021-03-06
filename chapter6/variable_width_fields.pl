#!/usr/bin/env perl

use strict;
use warnings;

my $file = 'variable_width_fields.log';
my %command_count;

# read in file
open(my $data, '<', $file) or die "Could not open '$file'\n";

# In the log file there are rows in which the first 16 and last 16 characters
# describe addresses while everything in between describes several commands
#
# Each command is built up by a leading character (A, B, C, D, etc) and a number
# of digits. The number of digits depend on the leading character.
#
# The script will split up the data to commands and count how many times each command type was given.
while (my $line = <$data>) {
	chomp $line;
	my $command = substr $line, 16, -16; # Get Command codes
	foreach my $char (split //, $command) {
		if ($char =~ /^[a-zA-Z]+$/) {
			$command_count{$char}++;
		}	
	}
}

foreach my $count (sort keys %command_count) {
	print "Command: $count\tNumber of times command used:  $command_count{$count}\n";
}
