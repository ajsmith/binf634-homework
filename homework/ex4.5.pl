#!/usr/bin/env perl

# Exercise 4.5
#
# Reverse transcript RNA to DNA

my ($rna, $dna);

$rna = uc(join('', <STDIN>));
$rna =~ s/\s*//g;

$dna = $rna;
$dna =~ tr/AUCG/TAGC/;
$dna = reverse $dna;

print "RNA: ", $rna, "\n";
print "DNA: ", $dna, "\n";
