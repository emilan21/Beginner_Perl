#!/usr/bin/env perl

use strict;
use warnings;

use Data::Dumper;

print "Enter a path: ";
my $path = <STDIN>;
chomp($path);

my ($full_path, $file) = split_path($path);

print "The filename is $file\n";
print "The full path is $full_path\n";

use File::Basename qw(basename dirname);
print basename($path), "\n";
print dirname($path), "\n";

sub split_path {
	my $str = shift;
	my ($path, $filename);
	if ($str =~ m{([^/]+$)}) {
		$filename = $1;
	}
	if ($str =~ m{^(.*)/}) {
		$path = $1;
	}

	return $path, $filename;
}
