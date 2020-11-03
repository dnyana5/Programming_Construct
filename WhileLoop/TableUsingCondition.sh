#!/bin/bash -x

read -p "Enter a number: " n
read -p "Enter range: " range
i=0;
while [ $i -le $range ]
do
	echo "$n X $i = " $(($n*$i))
	i=$(($i + 1))
done
