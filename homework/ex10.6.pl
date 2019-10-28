#!/usr/bin/env perl

# Exercise 10.6
#
# Take a long DNA sequence as input and output the counts of all
# four-base subsequences (256 in all), sorted by frequency.
#
# A four-base subsequence starts at each location 1, 2, 3, and so on.

use strict;
use warnings;

my ($dna) = join('', <STDIN>);
$dna =~ s/\s+//g;
my %counts;

for (my $i = 0; $i + 3 < length($dna); $i++) {
    my $s = substr($dna, $i, 4);
    if (exists($counts{$s})) {
        $counts{$s}++
    } else {
        $counts{$s} = 1;
    }
}

foreach my $k (sort {$counts{$a} <=> $counts{$b}} (keys(%counts))) {
    print "$k $counts{$k}\n";
}
