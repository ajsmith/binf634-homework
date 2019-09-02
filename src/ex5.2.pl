#!/usr/bin/env perl -w

# Exercise 5.2
#
# This program does the following:
# 1. Prompt the user to enter two DNA strings.
# 2. Concatenate DNA1 + DNA2
# 3. Print the concatenated DNA string.
# 4. Print DNA2 aligned to its segment in the concatenated string.

use strict;

my ($dna1, $dna2);

print 'Enter DNA1: ';
chomp($dna1 = <STDIN>);

print 'Enter DNA2: ';
chomp($dna2 = <STDIN>);

$dna1 .= $dna2;

print uc($dna1), "\n";
print ' ' x ((length $dna1) - (length $dna2)), uc($dna2), "\n";
