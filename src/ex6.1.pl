#!/usr/bin/env perl -w

# Exercise 6.1
#
# Concatenate strings together in a subroutine.

use strict;
use warnings;

# Concatenate dna strings together.
sub concat_dna {
    return join('', @_);
}

unless (scalar(@ARGV) >= 2) {
    print "Usage: ex6.1.pl <DNA1> <DNA2> ...\n";
    exit 1;
}

print concat_dna(@ARGV), "\n";
