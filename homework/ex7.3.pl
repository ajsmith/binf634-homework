#!/usr/bin/env perl

# Exercise 7.3
#
# Randomly shuffle an array.

sub generate_seed {
    return (time|$$);
}

sub array_swap {
    my ($aref, $i, $j) = @_;
    my $tmp = $$aref[$i];
    $$aref[$i] = $$aref[$j];
    $$aref[$j] = $tmp;
}

sub shuffle {
    my @deck = @_;
    my ($j, $tmp);
    for (my $i = 0; $i < scalar(@deck); $i++) {
        array_swap(\@deck, $i, int(rand(@deck)));
    }
    return @deck;
}

srand(generate_seed());

my @deck = ();
# my @deck = qw(A C G T);

foreach my $line (<STDIN>) {
    chomp($line);
    push(@deck, $line);
}

print "Original: ", join(' ', @deck), "\n";
print "Shuffled: ", join(' ', shuffle(@deck)), "\n";
