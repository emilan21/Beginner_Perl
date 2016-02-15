#!/usr/bin/env perl

use Data::Dumper;

my %hash = (
	f1 => {
		h1 => "fred",
		h2 => "barney",
	},
	f2 => {
		g1 => "george",
		g2 => "jane",
		g3 => "elroy",
	},
);

print Dumper \%hash;
print "\n\n\n\n";

my %hash2;

#get file from command line
my $filename = shift or die "Usage: $0 filename\n";
open(my $fh, "<", $filename) or die "Could not open '$filename'\n";

while (<$fh>) {
	next unless s/^(.*?):\s*//;
	$who = $1;
	for $field (split) {
		($key, $value) = split /=/, $field;
		$hash2{$who}{$key} = $value;
	}
}


print Dumper \%hash2;
