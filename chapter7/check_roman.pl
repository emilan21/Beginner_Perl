#!/usr/bin/env perl

use strict;
use warnings;

print "Enter a Roman numeral: ";
my $input = <STDIN>;
chomp($input);
my $check_input = check_roman($input);

if ($check_input eq 0) {
	print "The input is not a Roman numeral!\n";
} else {
	print "The decimal version of $input is ", roman_to_decimal($input), "\n";
}

sub check_roman {
	if ($_[0] =~ /^[IVXLCDM]+$/) {
		return 1;
	} else {
		return 0;
	}	
}

sub roman_to_decimal {
	my $decimal = 0;

	foreach my $char (split //, $_[0]) {
		if ($char eq 'I') {
			$decimal++;
		} elsif ($char eq 'V') {
			$decimal += 5;
		} elsif ($char eq 'X') {
			$decimal +=10;
		} elsif ($char eq 'L') {
			$decimal +=50;
		} elsif ($char eq 'C') {
			$decimal +=100;
		} elsif ($char eq 'D') {
			$decimal +=500;
		} elsif ($char eq 'M') {
			$decimal +=1000;
		}
	}	

	return $decimal;
}
