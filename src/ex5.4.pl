#!/usr/bin/env perl -w

use strict;

my $dna;
my $b;
my @complement = ();

$dna = join('', <STDIN>);

$dna =~ s/\s*//g;

for (my $i = 0; $i < length $dna; $i++) {
    $b = substr($dna, $i, 1);
    if ($b =~ /a/i) {
        unshift(@complement, 't');
    } elsif ($b =~ /c/i) {
        unshift(@complement, 'g');
    } elsif ($b =~ /g/i) {
        unshift(@complement, 'c');
    } elsif ($b =~ /t/i) {
        unshift(@complement, 'a');
    }
}

print 'Orig DNA: ', lc($dna), "\n";
print 'Comp DNA: ', join('', @complement), "\n";