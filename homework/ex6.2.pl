#!/usr/bin/env perl

# Exercise 6.2
#
# Implement a subroutine to report the percentage of each nucleotide
# in a DNA string.

sub percent {
    my ($x, $n) = @_;
    return int(100 * $x / $n);
}

sub dna_stats {
    my ($dna) = @_;
    my $n = length $dna;
    my $a = percent($dna =~ tr/A//, $n);
    my $g = percent($dna =~ tr/G//, $n);
    my $t = percent($dna =~ tr/T//, $n);
    my $c = percent($dna =~ tr/C//, $n);
    return ($a, $g, $t, $c);
}

unless (@ARGV) {
    print "Usage: ex6.2.pl <DNA>\n";
    exit 1;
}

chomp(my ($dna) = @ARGV);
print "DNA: $dna\n";

my @stats = dna_stats(uc($dna));
print "A:$stats[0]% G:$stats[1]% T:$stats[2]% C:$stats[3]%\n";
