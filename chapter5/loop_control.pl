#!/usr/bin/perl
use strict;
use warnings;

# Count the number of non-empty rows in a file until you encounter __END__ or the 

open my $fh, '<', $0 or die;

my $counter = 0;
while (my $line = <$fh>) {
	chomp $line;
	if ($line eq "__END__") {
		last;	# end processing file	
	}


	if ($line eq "") {
		next;	
	}

	print "'$line'\n";
	$counter++;
				### next jumps here ###
}
				### last jumps here ###

print "Number of non empty rows: $counter\n";

__END__
Some text here
that won't be printed
