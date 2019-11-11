#!/usr/bin/env perl

# Exercise 11.1
#
# Find the oldest and largest files in a filesystem tree using
# File::Find and file test operators.
#
# Usage: ex11.1.pl path/to/dir

use strict;
use warnings;

use File::Find;
use File::Spec;


# Global vars
my $oldest_file;
my $largest_file;


# Find the largest and oldest files, updating the corresponding
# globals when new largest and oldest are found. This subroutine
# conforms to the "wanted" callback spec expected by File::Find.
sub largest_and_oldest_files {
    if (-f and (!defined($largest_file) or (-s $largest_file < -s $_))) {
        # print "New largest file: $File::Find::name ", -s $_, "\n";
        $largest_file = $File::Find::name;
    }

    if (-f and (!defined($oldest_file) or (-M $oldest_file < -M $_))) {
        # print "New oldest file: $File::Find::name ", -M $_, "\n";
        $oldest_file = $File::Find::name;
    }

}


# The MAIN part.
sub main {
    my ($dir) = @ARGV;
    $dir = File::Spec->rel2abs($dir);
    print "Searching ${dir}\n";
    find(\&largest_and_oldest_files, $dir);
    print "Largest File: $largest_file\n";
    print "Oldest File: $oldest_file\n";
}


# Do it!
main();
