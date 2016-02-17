#!/usr/bin/env perl
use strict;
use warnings;

my @varibles;
my @arrays;
my @hashes;
my $varible_counter = 0;
my $array_counter = 0;
my $hash_counter = 0;

# get file from command line
my $filename = shift or die "Usage: $0 filename\n";
open(my $fh, "<", $filename) or die "Could not open '$filename'\n";

while (my $line = <$fh>) {
	chomp $line;
	if ($line =~ /my\s\$(\w+)/) {
		$varibles[$varible_counter] = $1;
	}elsif ($line =~ /my\s@(\w+)/) {
		$arrays[$array_counter] = $1;
	}elsif ($line =~ /my\s%(\w+)/) {
		$hashes[$hash_counter] = $1;
	}else {
		next;
	}

	$varible_counter++;
	$array_counter++;
}
# output
print "Varibles in perl script:\n";

foreach my $loop_varible (@varibles) {
	if (defined $loop_varible) {
		print "\t";
		print $loop_varible;
		print "\n";
	}
}

print "Arrays in perl script:\n";

foreach my $loop_array (@arrays) {
	if (defined $loop_array) {
		print "\t";
		print $loop_array;
		print "\n";
	}
}

print "Hashes in perl script:\n";

foreach my $loop_hashes (@hashes) {
	if (defined $loop_hashes) {
		print "\t";
		print $loop_hashes;
		print "\n";
	}
}
