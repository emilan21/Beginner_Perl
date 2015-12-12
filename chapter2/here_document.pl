#!/usr/bin/perl
use strict;
use warnings;

my $str = <<'END_STRING';
Some text
more text
END_STRING

print $str;

print "\n---\n";

my $other = <<"END_OTHER_STRING";
Beginning
$str
End
END_OTHER_STRING

print $other;
