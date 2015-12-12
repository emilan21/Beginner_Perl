#!/usr/bin/perl
use strict;
use warnings;

my $rand_num = int(rand(200));
my $rand_guest;
my $count = 1;

while ($count != 0) {
	print "Guess the random number: ";
	$rand_guest = <STDIN>;

	if ($rand_guest == $rand_num) {
		print "You guessed the right number!\n";	
		$count = 0;
	}elsif ($rand_guest > $rand_num) {
		print "You guessed to high!\n";	
	}else {
		print "You guessed to low!\n";	
	}
}
