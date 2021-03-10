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
for ((i=0; i<=20; i++ ))
do
flip
done
echo heads won $heads times
echo tails won $tails times
