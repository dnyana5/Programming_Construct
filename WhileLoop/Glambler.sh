#!/bin/bash -x

Gambler=100;
lose=0;
win=0;

while [[ $Gambler -ge 0 && $Gambler -le 200 ]]
do
	random=$((RANDOM%2))

	if [ $random -eq 1 ]
	then
		echo "Win"
		((Gambler++))
		((win++))
	else
		echo "lose"
		((Gambler--))
		((lose++))
	fi
done
echo "Gambler wins=" $win "and lose=" $lose
