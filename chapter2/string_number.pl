#!/usr/bin/perl
use strict;
use warnings;

print 3 . "", "\n";
print 3.1 . "", "\n";

print "3" + 0, "\n";
print "3.1" + 0, "\n";

print "3x" + 0, "\n";	# warning: Argument "3x" isn't numeric in addition (+)
print "3\n" + 0, "\n";
print "3x7" + 0, "\n";	# waring: Argument "3x7" isn't numeric in addition (+)

print "" + 0, "\n";
print "z" + 0, "\n";
print "z/" + 0, "\n";
