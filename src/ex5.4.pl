#!/usr/bin/env perl -w

# Exercise 5.4.
#
# This program reads a DNA string from STDIN and then prints out the
# complement. This program is not allowed to use the s/// or tr
# functions.

use strict;

my $dna;
my $b;
my @complement = ();

$dna = join('', <STDIN>);

$dna =~ s/\s*//g;

for (my $i = 0; $i < length $dna; $i++) {
    $b = substr($dna, $i, 1);
    if ($b =~ /a/i) {
        unshift(@complement, 'T');
    } elsif ($b =~ /c/i) {
        unshift(@complement, 'G');
    } elsif ($b =~ /g/i) {
        unshift(@complement, 'C');
    } elsif ($b =~ /t/i) {
        unshift(@complement, 'A');
    }
}

print 'Orig DNA: ', uc($dna), "\n";
print 'Comp DNA: ', join('', @complement), "\n";
