#!/usr/bin/env perl -w

use strict;

sub complement {
    my ($dna) = @_;
    my @comp;
    foreach (split('', $dna)) {
        if (/a/i) {
            unshift(@comp, 't');
        } elsif (/c/i) {
            unshift(@comp, 'g');
        } elsif (/g/i) {
            unshift(@comp, 'c');
        } elsif (/t/i) {
            unshift(@comp, 'a');
        }
    }
    return join('', @comp);
}

chomp(my ($dna1, $dna2) = <STDIN>);

print 'DNA1: ', uc($dna1), "\n";
print 'DNA2: ', uc($dna2), "\n";

if ($dna1 eq complement($dna2)) {
    print "DNA1 and DNA2 are complementary strands!\n";
} else {
    print "DNA1 and DNA2 are not complementary.\n";
}
