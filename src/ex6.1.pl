#!/usr/bin/env perl -w

# Exercise 6.1
#
# Concatenate two strings together in a subroutine.

use strict;
use warnings;

# Concatenate dna strings together.
sub concat_dna {
    return join('', @_);
}

print concat_dna(@ARGV), "\n";
