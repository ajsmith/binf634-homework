#!/usr/bin/env python

"""Exercise 12.6

Using Biopython, perform a BLAST search at the NCBI web site, then
parse the BLAST output.

This exercise was originally intended to be implemented using
Bioperl. However, installing Bioperl was such a frustrating experience
that I chose to do this exercise in Biopython instead.

"""

import sys

import Bio.Blast.NCBIWWW
import Bio.Blast.NCBIXML
import Bio.SeqIO


def main(argv=None):
    """The main part.

    """
    (dna_filename,) = argv[1:]
    # dna_data = open(dna_file, 'rb').read()
    dna_rec = Bio.SeqIO.read(dna_filename, format='fasta')
    dna = dna_rec.seq

    print('Querying NCBI BLAST server...')
    result_xml = Bio.Blast.NCBIWWW.qblast('blastn', 'nt', dna)
    print('Parsing BLAST XML record...')
    blast_recs = Bio.Blast.NCBIXML.parse(result_xml)
    print('\n')

    for rec in blast_recs:
        print('Query:', rec.query_id)
        print('\n')
        for align in rec.alignments:
            print(align.title)
            for hsps in align.hsps:
                print(hsps)
            print('\n')


if __name__ == '__main__':
    # Do the thing
    main(argv=sys.argv)
