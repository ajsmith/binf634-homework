#!/usr/bin/env perl

# Exercise 7.2
#
# Prompt the user until they correctly pick a randomly chosen
# nucleotide base.

sub generate_seed {
    return (time|$$);
}

srand(generate_seed());

my (@nucleotides) = qw(A C G T);
my $answer = $nucleotides[rand @nucleotides];
my $guess;

do {
    print "Enter guess: ";
    chomp($guess = <STDIN>);
    $guess =~ s/\s*//g;
    $guess = uc($guess);
} until ($guess eq $answer);

print "Correct! Guess: $guess  Answer: $answer\n";
