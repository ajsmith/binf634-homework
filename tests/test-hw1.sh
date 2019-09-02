#!/bin/bash
set -e

# Test Homework 1:
# 1. ex4.3.pl
# 2. ex4.4.pl
# 3. ex4.5.pl
# 4. ex5.2.pl
# 5. ex5.4.pl
# 6. ex5.6.pl

test_dir=$(dirname $0)
prog_dir=${test_dir}/../src

echo
echo "Testing ex4.3.pl"
cat <<EOF | perl ${prog_dir}/ex4.3.pl lower
AaTtgcGC
EOF

cat <<EOF | perl ${prog_dir}/ex4.3.pl upper
AaTtgcGC
EOF

echo
echo "Testing ex4.4.pl"
cat <<EOF | perl ${prog_dir}/ex4.4.pl lower
AaTtgcGC
EOF

cat <<EOF | perl ${prog_dir}/ex4.4.pl upper
AaTtgcGC
EOF

echo
echo "Testing ex4.5.pl"
cat <<EOF | perl ${prog_dir}/ex4.5.pl
gaauuc
EOF

cat <<EOF | perl ${prog_dir}/ex4.5.pl
auugggcccc
EOF

echo
echo "Testing ex5.2.pl"
cat <<EOF | perl ${prog_dir}/ex5.2.pl
aaaa
tttt
EOF

echo
echo "Testing ex5.4.pl"
cat <<EOF | perl ${prog_dir}/ex5.4.pl
gaattc
EOF

cat <<EOF | perl ${prog_dir}/ex5.4.pl
aaggttttcccc
EOF

echo
echo "Testing ex5.6.pl"
perl ${prog_dir}/ex5.6.pl gaattc gaattc
perl ${prog_dir}/ex5.6.pl gc at
