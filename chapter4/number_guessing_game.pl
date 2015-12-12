#!/usr/bin/perl
use strict;
use warnings;

my $rand_max = 100;
my $rand_num = int(rand($rand_max));
my $rand_move;
my $rand_guest;
my $count = 1;
my $move_count = 0;
my $debug_count;

while ($count != 0) {
	print "Guess the random number: ";
	$rand_guest = <STDIN>;
	chomp($rand_guest);
	
	if ($rand_guest eq $rand_num) {
		print "You guessed the right number!\n";	
		$count = 0;
	}elsif ($rand_guest gt $rand_num) {
		print "You guessed to high!\n";	
	}else {
		print "You guessed to low!\n";	
	}

	if ($rand_guest eq "n") {
		print "Restarting game!\n";
		$rand_num = int(rand($rand_max));
	}

	if ($rand_guest eq "s") {
		print "Number is $rand_num\n";	
		exit;
	}

	if ($rand_guest eq "x") {
		print "Quiting game\n";
		exit;
	}

	if ($rand_guest eq "m") {
		$move_count++;
	}

	if ($rand_guest eq "d") {
		$debug_count++;
		if ($debug_count eq 1) {
			print "Debug mode on\n";
		} elsif ($debug_count eq 2) {
			print "Debug mode off\n";
			$debug_count = 0;
		}
	}

	if ($debug_count eq 1) {
		print "Number currently is $rand_num\n";
	}

	if ($move_count eq 1) {
		print "Move mode on\n";	
		$rand_move = int(rand(2)) + 1;
			if ($rand_move eq 1) {
				$rand_num -= 2;	
			} else {
				$rand_num += 2;	
			}
	} elsif ($move_count eq 2) {
		print "Move mode off\n";
		$move_count = 0;
	}
}
