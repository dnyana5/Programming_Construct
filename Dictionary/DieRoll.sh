#!/bin/bash -x

declare -A dictionary
dictionary[1]=0
dictionary[2]=0
dictionary[3]=0
dictionary[4]=0
dictionary[5]=0
dictionary[6]=0

while [ ${dictionary[1]} -ne 10 ] && [ ${dictionary[2]} -ne 10 ] && [ ${dictionary[3]} -ne 10 ] && [ ${dictionary[4]} -ne 10 ] && [ ${dictionary[5]} -ne 10 ] && [ ${dictionary[6]} -ne 10 ]
do
	roll=$(( RANDOM%6 + 1 ))
	j=0
for (( j=1; j<=6; j++ ))
do
	if [ $roll -eq $j ]
	then
		(( dictionary[$j]++ ))
	fi
done
done
echo "Dice 1 repeating for: ${dict[1]} times"
echo "Dice 2 repeating for: ${dict[2]} times"
echo "Dice 3 repeating for: ${dict[3]} times"
echo "Dice 4 repeating for: ${dict[4]} times"
echo "Dice 5 repeating for: ${dict[5]} times"
echo "Dice 6 repeating for: ${dict[6]} times"
i=1
max=0
min=11
num=0
temp=0
temp1=0
for(( i=1; i<=6; i++ ))
do
	num=${dictionary[$i]}
if [ $num -gt $max ]
then
	max=$num
	temp=$i
fi
if [ $num -lt $min ]
then
	min=$num
	temp1=$i
fi
done
echo "Minimum is $temp"
echo "Maximum is $temp1"
