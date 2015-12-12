#!/usr/bin/perl
use strict;
use warnings;

my $num1;
my $num2;
my $anwser;

print "Enter a number: ";
$num1 = <STDIN>;
print "Enter a second number: ";
$num2 = <STDIN>;

if ($num1 > 0 and $num2 > 0) {
	$anwser = $num1 * $num2;
	print "$anwser\n";
}elsif ($num1 <= 0) {
	print 'Error! $num1 is negative.';
	print "\n";
}elsif ($num2 <= 0) {
	print 'Error! $num2 is negative.';
	print "\n";
}
