#!/usr/bin/perl
use strict;
use warnings;

my @names = qw(Foo Bar Baz);
my $first = shift @names;

print "$first\n";		# Foo
print "@names\n";		# Bar Baz

unshift @names, "Moo";		# Moo Bar Baz
print "@names\n";
