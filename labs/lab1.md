# BINF634 Fall 2019 Solka

# Lab 1

## 1 (10 pts)

Consider the AvaII restriction site, which can have two different
sequences:

    GGACC and GGTCC.

Write a regular expression that will recognize this by writing our
alternatives inside of parenthesis separated by a vertical bar.

## 2 (10 pts)

The BisI restriction enzyme cuts at an even wider range of motifs –
the pattern is GCNGC, where N represents any base. Write a regular
expression that will recognize this using the square bracket
construct.

## 3 (10 pts)

Here is a a complex pattern to identify full-length eukaryotic
messenger RNA sequences:

    ^AUG[AUGC]{30,1000}A{5,10}$

Reading this pattern from left to right verbally say what sort of
sequence it will match (5 pts) Given an example of a pattern it will
match (5 pts)

## 4 (10 pts)

Given the string “Homo sapiens” write a regular expression to match
and store the genus part and the species part.

## 5 (20 pts)

Consider the following code snippet

```{perl}
#!/usr/bin/perl
  use strict;
  use warnings;
  my $data = 'Home1Work2Cafe3Work4Home';
  # \d+ matches one or more integer numbers
  my @values = split(/\d+/, $data);
  foreach my $val (@values) {
 print "$val\n";
  }
exit 0;
```

Consider the dna sting "ACTNGCATRGCTACGTYACGATSCGAWTCG". Modify the
code above so that it splits the DNA string wherever we see a base
that isn’t A, T, G or C.

## 6 (20 pts)

Consider the following made up list of gene accession names

```{python}
accessions = [
    'xkn59438', 'yhdck2', 'eihd39d9', 'chdsye847', 'hedle3455', 'xjhd53e',
    '45da', 'de37dp']
```

(a) Write a program that will identify the accession names that end
with d followed by either a, r, or p

(b) Write a program that will identify the accession names that
contains 3 or more digits in a row.


## 7 (20 pts)

Return to the gene accession names of problem 6.

(a) Write a program that will identify the accession names that
contains the number 5.

(b) Starts with x or y.
