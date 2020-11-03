#!/bin/bash -x

i=1
declare -A dictionary
echo "Generating a Birth Month between the 92 and 93 "
while [ $i -le 50 ]
do
month=$(( RANDOM%12+1 ))
j=1
for (( j=1; j<=12; j++ ))
do
	if [ $month -eq $j ]
	then
		(( dictionary[$j]++ ))
	fi
done
i=$(( $i+1 ))
done

k=1
for (( k=1; k<=12; k++ ))
do
echo "Month $k has birthday : ${dictionary[$k]} people"
done
