#!/usr/bin/env perl

use strict;
use warnings;

print "Enter a Hex, Oct, or Binary number: ";
my $input = <STDIN>;
chomp($input);
my $check_input = check_in($input);

if ($check_input eq 'h') {
	print "$input is a Hex number\n";
} elsif ($check_input eq 'o') {
	print "$input is a Oct number\n";
} elsif ($check_input eq 'b') {
	print "$input is a Binary number\n";
} else {
	print "Input not valet\n";
}

sub check_in {
	if ($_[0] !~ /^(0|0x|0b)/) {
		return 0;
	} elsif ($_[0] =~ /^0x[\da-fA-F]+$/) {
		return 'h';
	} elsif ($_[0] =~ /^0[\d]+$/) {
		return 'o';
	} elsif ($_[0] =~ /^0b[01]+$/) {
		return 'b';
	}
}
