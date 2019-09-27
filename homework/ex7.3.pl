#!/usr/bin/env perl

# Exercise 7.3
#
# Randomly shuffle an array.

use strict;
use warnings;

sub generate_seed {
    return (time|$$);
}

# Swap two elements in an array
sub array_swap {
    my ($aref, $i, $j) = @_;
    print "Swapping $i\t$j\n";
    my $tmp = $$aref[$i];
    $$aref[$i] = $$aref[$j];
    $$aref[$j] = $tmp;
}

# Shuffle an array
sub shuffle {
    my @deck = @_;
    my $j;
    for (my $i = 0; $i < scalar(@deck); $i++) {
        $j = int($i + rand(scalar(@deck) - $i));
        array_swap(\@deck, $i, $j);
    }
    return @deck;
}

# Compare similarity of two arrays
sub similarity {
    my ($aref1, $aref2) = @_;
    my $k = 0;
    for (my $i = 0; $i < scalar(@$aref1); $i++) {
        if ($$aref1[$i] == $$aref2[$i]) {
            print "Equal at $i: $$aref1[$i] $$aref2[$i]\n";
            $k++;
        }
    }
    return $k / scalar(@$aref1) * 100;
}

srand(generate_seed());

my @deck = ();
my @shuffled;
my $similarity;
# my @deck = qw(A C G T);

foreach my $line (<STDIN>) {
    chomp($line);
    push(@deck, $line);
}

@shuffled = shuffle(@deck);
$similarity = similarity(\@deck, \@shuffled);

print "Original: ", join(' ', @deck), "\n";
print "Shuffled: ", join(' ', @shuffled), "\n";
printf("%.2f%% similarity after shuffling.\n", $similarity);
