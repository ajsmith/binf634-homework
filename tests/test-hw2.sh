#!/bin/bash

set -e

# Test Homework 2:
#   - ex6.1.pl
#   - ex6.2.pl

test_dir=$(dirname $0)
prog_dir=${test_dir}/../src

echo "Testing ex6.1.pl"
perl ${prog_dir}/ex6.1.pl GAA TTC

echo
echo "Testing ex6.2.pl"
perl ${prog_dir}/ex6.2.pl AGTC
perl ${prog_dir}/ex6.2.pl GTC
perl ${prog_dir}/ex6.2.pl AAAAGGGTTC
