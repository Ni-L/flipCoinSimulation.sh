#!/bin/bash -x

coinflip=$(( RANDOM%2 ))
if [ $coinflip -eq 0 ]
then
	echo "heads"
else 
	echo "tails as winner"
fi
