#!/usr/bin/perl
use strict;
use warnings;

my %count;
# open file
my $file = "apache_access.log";
open(my $fh, "<", $file) or die "Could not open '#file': $!";
# parse file and get client ip addresses and number of hits
while (my $line = <$fh>) {
	chomp $line;
	my $length = index($line, " ");
	my @ips = substr($line, 0, $length);
	foreach my $client (@ips) {
		$count{$client}++;
	}
}
# print client ips and number of hits
foreach my $client (sort hash_value_descending_num (keys (%count))) {
	print "Client ip addresses: $client\tNumber of hits: $count{$client}\n";
}

# descending number sort function
sub hash_value_descending_num {
	$count{$b} <=> $count{$a};
}

