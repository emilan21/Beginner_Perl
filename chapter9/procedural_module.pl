#!/usr/bin/env perl
use strict;
use warnings;

use Cwd qw(cwd);

my $path = cwd;

print "$path\n";
