#!/bin/bash

# Test Homework 3:
#   - ex7.2.pl
#   - ex7.3.pl
#
# Author: Alexander Smith <asmitl@gmu.edu>

# bash options:
# (-e) stop immediately on unhandled errors
set -e

test_dir=$(dirname $0)
prog_dir=${test_dir}/../homework

echo "==> Test ex7.2.pl"
cat <<EOF | ${prog_dir}/ex7.2.pl
A
C
G
T
EOF

echo
echo "==> Test ex7.3.pl"
cat <<EOF | homework/ex7.3.pl
G
A
A
T
T
C
EOF
