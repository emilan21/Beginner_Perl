#!/usr/bin/env perl

use strict;
use warnings;

my $filename = shift or die "$0 FILENAME\n";
open my $fh, '<', $filename or die "Could not open '$filename'\n";

while (my $line = <$fh>) {
	if ($line =~ /Bar/ or $line =~ /Baz/) {
		print $line;
	}
}
