#!/usr/bin/perl
use strict;
use warnings;

use Text::CSV_XS;
my $csv = Text::CSV_XS->new();

my $file = 'process_csv_file_module.csv';
if (defined $ARGV[0]) {
	$file = $ARGV[0];	
}

my $sum = 0;
open(my $data, '<', $file) or die "Could not open '$file'\n";
while (my $line = <$data>) {
	chomp $line;

	if ($csv->parse($line)) {
		my @columns = $csv->fields();	
		$sum += $columns[2];
	} else {
		warn "Line could not be parsed: $line\n";	
	}
}
print "$sum\n";
