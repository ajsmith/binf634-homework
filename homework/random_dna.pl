#!/usr/bin/env perl

# Utility to generate random DNA strings.

use strict;
use warnings;

sub generate_seed {
    return (time|$$);
}

my @nucleotides = qw(a c g t);

sub random_nucleotide {
    return @nucleotides[rand @nucleotides];
}

sub random_dna {
    my ($n) = @_;
    my @dna = ();
    for (my $i = 0; $i < $n; $i++) {
        push(@dna, random_nucleotide());
    }
    return join('', @dna);
}

my $dna = random_dna(1000000);

for (my $i = 0; $i < length($dna); $i += 79) {
    print substr($dna, $i, 79), "\n";
}
