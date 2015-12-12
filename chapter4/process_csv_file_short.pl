#!/usr/bin/perl

while (<>) {
	$sum += (split /,/)[2];
}
print "$sum\n";
