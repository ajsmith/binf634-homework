#!/bin/bash

# Test Homework 4:
#   - ex10.3.pl
#   - ex10.6.pl
#
# Author: Alexander Smith <asmitl@gmu.edu>

# bash options:
# (-e) stop immediately on unhandled errors
set -e

test_dir=$(dirname $0)
prog_dir=${test_dir}/../homework

echo "==> Test ex10.3.pl"
${prog_dir}/ex10.3.pl
echo
