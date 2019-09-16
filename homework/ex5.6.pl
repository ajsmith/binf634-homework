#!/usr/bin/env perl

# Exercise 5.6
#
# Check if two DNA strings are complements of each other.

use strict;

sub complement {
    my ($dna) = @_;
    my @comp = ();
    foreach (split('', $dna)) {
        if (/a/i) {
            unshift(@comp, 'T');
        } elsif (/c/i) {
            unshift(@comp, 'G');
        } elsif (/g/i) {
            unshift(@comp, 'C');
        } elsif (/t/i) {
            unshift(@comp, 'A');
        }
    }
    return join('', @comp);
}

unless (scalar @ARGV >= 2) {
    print "Usage: ex5.6.pl <dna1> <dna2>\n";
    exit 1;
}

my ($dna1, $dna2) = @ARGV;

print 'DNA1: ', uc($dna1), "\n";
print 'DNA2: ', uc($dna2), "\n";

if (uc($dna1) eq complement($dna2)) {
    print "DNA1 and DNA2 are complementary strands!\n";
} else {
    print "DNA1 and DNA2 are not complementary.\n";
}
