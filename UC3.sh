#!/bin/bash 

heads=0
tails=0
function flip ()
{
coinflip=$(( RANDOM%2 ))
if [ $coinflip -eq 0 ]
then
((heads++))
else
 ((tails++))
fi
}

while [ $heads -le 21 -a $tails -le 21 ]
do
flip
done
if [ $heads -gt $tails ]
then
	echo Heads win by  $(($heads - $tails))
elif [ $tails -gt $heads ]
then
	echo  Tails win by $(($tails - $heads))
else
	echo Its Tie
fi
