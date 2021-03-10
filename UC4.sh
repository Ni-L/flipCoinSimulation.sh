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
num=1
function check() {
echo heads won $heads times
echo tails won $tails times

if [ $heads -gt $tails ]
then
        echo Heads win by  $(($heads - $tails))
elif [ $tails -gt $heads ]
then
        echo  Tails win by $(($tails - $heads))
else
        echo Its Tie
((num++))
fi
}
check
if [$num == 2]
then
	headS=1
	tails=1
	while [ $(( $heads - $tails )) -ne 2 -a $(( $tails - $heads )) -ne 2 ]
	do
	flip
done	
check
fi

