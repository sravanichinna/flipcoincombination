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
echo "HH percent:" `echo $hhcount | awk'{print ($1/20)*100}'` "%"
echo "HT percent:" `echo $htount | awk'{print ($1/20)*100}'` "%"
echo "TH percent:" `echo $thcount | awk'{print ($1/20)*100}'` "%"
echo "TT percent:" `echo $ttcount | awk'{print ($1/20)*100}'` "%"
echo "result:"
if [[ $hhcount > $htcount && $hhcount > $thcount && $hhcount > $ttcount ]]
then
	echo "HEAD HEAD WON"
elif [[ $htcount > $hhcount && $htcount >$thcount && $htcount > $ttcount ]]
then
	echo "HEAD TAIL WON"
elif [[ $thcount > $hhcount && $thcount >$htcount && $thcount > $ttcount ]]
then 
	echo"TAIL HEAD WON"
else
	echo "TAIL TAIL WON"
fi
echo "HHH percent:" `echo $hhhcount | awk '{print ($1/20)*100'` "%"
echo "HHT percent:" `echo $hhtcount | awk '{print ($1/20)*100'` "%"
echo "HTH percent:" `echo $hthcount | awk '{print ($1/20)*100'` "%"
echo "HTT percent:" `echo $httcount | awk '{print ($1/20)*100'` "%"
echo "THH percent:" `echo $thhcount | awk '{print ($1/20)*100'` "%"
echo "THT percent:" `echo $thtcount | awk '{print ($1/20)*100'` "%"
echo "TTH percent:" `echo $tthcount | awk '{print ($1/20)*100'` "%"
echo "TTT percent:" `echo $tttcount | awk '{print ($1/20)*100'` "%"


echo "result:"
if [[ $hhhcount > $hhtcount && $hhhcount > $hthcount && $hhhcount > $httcount && $hhhcount > $thhcount && $hhhcount > $thtcount && $hhhcount > $tthcount && $hhhcount > $tttcount ]]
then
	echo "HEAD HEAD HEAD WON"
elif [[ $hhtcount > $hhhcount && $hhtcount > $hthcount && $hhtcount > $httcount && $hhtcount >$thhcount && $hhtcount > $thtcount && $hhtcount > $tthcount && $hhtcount > $tttcount ]]
then
	echo "HEAD HEAD TAIL WON"
elif [[ $hthcount > $hhtcount && $hthcount > $hhhcount && $hthcount > $httcount && $hthcount > $thhcount && $hthcount > $thtcount && $hthcount >$tthcount && $hthcount > $tttcount ]]
then
	echo "HEAD TAIL HEAD WON"
elif [[ $httcount > $hhtcount && $httcount > $hthcount && $httcount > $hhhcount && $httcount > $thhcount && $httcount > $thtcount && $httcount > $tthcount && $httcount > $tttcount ]]
then
	echo "HEAD TAIL TAIL WON"
elif [[ $thhcount > $hhtcount && $thhcount > $hthcount && $thhcount >$httcount && $thhcount > $hhhcount && $thhcount > $thtcount && $thhcount > $tthcount > $tttcount ]]
then
	echo "TAIL HEAD HEAD WON"
elif [[ $thtcount > $hhtcount && $thtcount > $hthcount && $thtcount > $httcount && $thtcount >  $thhcount && $thtcount > $hhtcount && $thtcount > $tthcount && $thtcount > $tttcount ]]
then
	echo "TAIL HEAD TAIL WON"
elif [[ $tthcount > $hhtcount && $tthcount > $hthcount && $tthcount > $httcount && $tthcount > $thhcount && $tthcount > $thtcount && $tthcount > $hhhcount && $tthcount > $tttcount ]]
then
	echo "TAIL TAIL HEAD WON"
elif [[ $tttcount > $hhtcount && $tttcount > $hthcount && $tttcount > $httcount && $tttcount > $thhcount && $tttcount > $thtcount && $tttcount > $tthcount && $tttcount > $hhhcount ]]
then
	echo "TAIL TAIL TAIL WON"
fi
