#!/usr/bin/env perl -w

# Exercise 4.3
#
# Print DNA to upper or lowercase using the tr function.

my $usage = "Usage: ex4.3.pl (upper|lower)";

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
    print "\nLowercase: ";
} elsif ($mode eq "upper") {
    $dna =~ tr/acgt/ACGT/;
    print "\nUppercase: ";
} else {
    print $usage;
    exit 1;
}

print $dna, "\n";
