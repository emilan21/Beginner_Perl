#!/usr/bin/env perl

use strict;
use warnings;

my $filename = shift or die;

my $data;
{
	open my $fh, '<', $filename or die;
	local $/ = undef;
	$data = <$fh>;
}

if ($data =~ /(^a.*\nb.*\n)/mi) {
	print $1;
}
