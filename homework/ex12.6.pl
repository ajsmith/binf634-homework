#!/usr/bin/env perl

# Exercise 12.6
#
# Using Bioperl, perform a BLAST search at the NCBI web site, then
# parse the BLAST output.
#
# I couldn't get Bioperl installed and working in a sane way, so I did
# it in Biopython instead. See: ex12.6.py

use strict;
use warnings;

use lib qw(/usr/local/share/perl5);
use lib qw(~/perl5/lib/perl5);

use Bio::Tools::Run::StandAloneBlast;
use Bio::SearchIO;
use Bio::SeqIO;

sub print_hashref {
  my ($href) = @_;
  print "HREF: $href\n";
  foreach my $key (keys %$href) {
    my $val = $$href{$key};
    print "$key: $val\n";
  }
}


# The main part.
sub main {
    my ($filename) = $ARGV;
    my $factory = Bio::Tools::Run::StandAloneBlast->new(
        -database=>'ncbi',
        -remote=>1
        );
    my $seq1 = Bio::SeqIO->new(-file=>$filename, -format=>'Fasta');
    my $report = $factory->blastn($seq1->next_seq());
    my $primary_seq = $$report{primary_seq}
}

main();
