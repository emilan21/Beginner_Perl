#!/usr/bin/env perl

use strict;
use warnings;

my @input = (
	'fname=Foo&lname=Bar&email=foo@bar.com',
	'ip=127.0.0.1&machine=foobar',
);

my %hash;
my @key_pair_split;
my @key_pair_split_2;

foreach my $str (@input) {
	@key_pair_split = split /&/, $str;
	foreach my $str2 (@key_pair_split) {
		@key_pair_split_2 = split /=/, $str2;

	}
}

foreach my $word (keys %hash) {
	print "$word => $hash{$word}\n";
}
