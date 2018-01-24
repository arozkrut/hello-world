#!/bin/sh
git bisect start HEAD pierwszy >&-
polecenie=`git bisect run ./linijkaCommit.sh`
git bisect reset >&-

echo "$polecenie" > pomocniczy

hash=`grep "is the first bad commit" pomocniczy`
echo "$hash"

llinijek=`grep -c "running" pomocniczy`

echo "We needed $llinijek steps"
