#!/bin/bash -x
read -p "Enter the Number" Number
if [ $(( Number%2 )) -eq 0 ]
then
echo "Head"
else
echo "tail"
fi
