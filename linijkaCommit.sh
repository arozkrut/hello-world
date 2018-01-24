#!/bin/sh
string1=`head -n1 log`

if [ "$string1" = "Kolejne czasy:" ]
then
	exit 0
else
	exit 1
fi
