#!/usr/bin/env perl

# Exercise 11.2
#
# Find all of the Perl files in a filesystem tree using File::Find.
#
# Usage: ex11.2.pl path/to/dir

use strict;
use warnings;

use File::Find;
use File::Spec;


# Find Perl files. This subroutine conforms to the "wanted" callback
# spec expected by File::Find.
sub perl_files {
    if (-f and /\.(pl|pm)$/) {
        print "Perl file: $File::Find::name\n";
    }
}


# The MAIN part.
sub main {
    my ($dir) = @ARGV;
    $dir = File::Spec->rel2abs($dir);
    print "Searching for Perl files in: ${dir}\n";
    find(\&perl_files, $dir);
}


# Do it!
main();
