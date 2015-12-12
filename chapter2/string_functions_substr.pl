#!/usr/bin/perl
use strict;
use warnings;

my $s = "The black cat climbed the gree tree";
my $z;
$z = substr $s, 4, 5;
print "$z\n";		# $z = black
$z = substr $s, 4, -11;	# $z = black cat climbed the
print "$z\n";
$z = substr $s, 14;	# $z = climbed the green tree
print "$z\n";
$z = substr $s, -4;	# $z = tree
print "$z\n";
$z = substr $s, -4, -2;	# $z = tr 
print "$z\n";

$z = substr $s, 14, 7, "jumped from";
print "$z\n";		# $z = climbed
print "$s\n";		# $s = The black cat jumpged from the green tree

