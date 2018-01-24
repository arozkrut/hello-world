#!/bin/sh
git bisect start HEAD pierwszy >&-
polecenie=`git bisect run ./linijkaCommit.sh`

echo "$polecenie" > pomocniczy

hash=`grep "is the first bad commit" pomocniczy`
echo "$hash"

llinijek=`grep -c "running" pomocniczy`
llinijek=$(( llinijek - 1 ))
echo "We needed $llinijek steps"
