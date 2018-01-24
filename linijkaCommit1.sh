#!/bin/sh
string1=`head -n1 log`

if [ "$string1" = "Kolejne czasy:" ]
then
	echo "Przed nadpisaniem"
	exit 0
else
	echo "Po nadpisaniu"
	exit 1
fi
