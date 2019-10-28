# BINF634 Homework

Bioinformatics Homework in Perl.

Author: Alexander Smith


## Requirements

Have Perl 5 installed (Ew, Perl).


## Homeworks

Homework 1:

    homework/ex4.3.pl
    homework/ex4.4.pl
    homework/ex4.5.pl
    homework/ex5.2.pl
    homework/ex5.4.pl
    homework/ex5.6.pl

Homework 2:

    homework/ex6.1.pl
    homework/ex6.2.pl

Homework 3:

    homework/ex7.2.pl
    homework/ex7.3.pl

Homework 4:

    homework/ex10.3.pl
    homework/ex10.6.pl


## Labs

Lab 1:

    labs/lab1.md


## Running the tests

Just run the test scripts.

```{.bash}
$ tests/test-hw1.sh
$ tests/test-hw2.sh
$ tests/test-hw3.sh
$ tests/test-hw4.sh
```

The test scripts also provide examples for running each solution.


## Source Code

Source code for homework solutions is found in the `src/` directory.


## Building an archive

```{.bash}
$ git archive --format tgz --prefix asmitl-binf634-homework-x.y.z/ HEAD \
    > asmitl-binf634-homework-x.y.z.tar.gz
```


## Copying to BINF server

```{.bash}
$ git archive --format tgz --prefix asmitl-binf634-homework-x.y.z/ HEAD \
    | ssh me@host "tar xzv"
```
