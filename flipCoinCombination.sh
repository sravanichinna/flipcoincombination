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
if(( $a == 1 ))
then
	((hhcount++))
if(( $b == 1 ))
then
	((hhhcount++))
else
	((hhtcount))
fi
else
	((htcount++))
if(( $b == 1 ))
then
	((hthcount++))
else
	((httcount++))
fi
fi
else
	((tcount++))
	echo -n "tail"
if (( $a == 1 ))
then
	((thcount++))
if(( $b == 1 ))
then
	((thhcount++))
else
	((thtcount++))
fi
else
	((ttcount++))
if(( $b == 1 ))
then
	((tthcount++))
else
	((tttcount))
fi
fi
fi
done
echo""
echo "H percent:" `echo $hcount | awk'{print ($1/20)*100}'` "%"
echo "T percent:" `echo $tcount | awk '{print ($1/20)*100}'` "%"
echo -n "result:"
if [[ $hcount -gt $tcount ]]
then
echo "HEAD WON"
else
echo "TAIL WON"
fi
