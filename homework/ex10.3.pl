#!/usr/bin/env perl

# Exercise 10.3
#
# Implement a subroutine that passes a hash by value and a subroutine
# to pass the hash by reference.

use strict;
use warnings;

# Pass a hash by value.
sub hash_by_value {
    my %h = @_;
    return %h;
}

# Pass a hash by reference.
sub hash_by_reference {
    my ($href) = @_;
    return %$href;
}

# Print a hash.
sub print_hash {
    my %h = @_;
    foreach my $k (keys %h) {
        print "$k $h{$k}\n";
    }
}

my %h = (
    x => 5,
    y => 10,
    color => "blue",
    );

print_hash(hash_by_value(%h));
print "\n";
print_hash(hash_by_reference(\%h));
