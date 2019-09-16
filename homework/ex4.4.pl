#!/usr/bin/env perl

# Exercise 4.4
#
# Print DNA to upper or lowercase using \U and \L.

my $usage = "Usage: ex4.4.pl (upper|lower)";

unless (scalar @ARGV >= 1) {
    print $usage;
    exit 1;
}

my ($mode) = @ARGV;
$mode = lc($mode);

my $dna = join('', <STDIN>);
$dna =~ s/\s*//g;

if ($mode eq "lower") {
    $dna =~ tr/ACGT/acgt/;
    print "\nLowercase: \L$dna\n";
} elsif ($mode eq "upper") {
    $dna =~ tr/acgt/ACGT/;
    print "\nUppercase: \U$dna\n";
} else {
    print $usage;
    exit 1;
}
