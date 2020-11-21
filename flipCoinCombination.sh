#!/bin/bash
echo "welcome to flip coin combination"
for((i=0;i<20;i++))
do
b=$a
a=$coin
coin=$(($RANDOM%2 ))
if (( $coin == 1 ))
then
	((hcount++))
	echo -n "head"
else
	((tcount++))
	echo -n "tail"
