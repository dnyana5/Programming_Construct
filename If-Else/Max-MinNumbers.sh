#!/bin/bash -x

read -p "enter number: " numbers
max=$numbers;
min=$numbers;
for i in {1..4}
do
	read -p "enter number: " numbers;
	if [ $min -gt $numbers ]
	then
		min=$numbers;
	fi
	if [ $numbers -gt $max ]
	then
		max=$numbers;
	fi
done
echo "$max=maximum";
echo "$min=minimum
