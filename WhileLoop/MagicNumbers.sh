#!/bin/bash -x

echo "Think a number between 1 to 100 "
low=1;
high=100;
magicNumber=0;

while [ $low -ne $magicNumber ]
do
	magicNumber=$(( low + (high-low)/2 ))

	read -p "Enter 1 if number is less than $magicNumber or Enter 0 if number is greater than $magicNumber: " number

	if [ $magicNumber -eq $low ]
	then
		if [ $number -eq 1 ]
		then
			#echo $magicNumber
			break
		else
			echo $((magicNumber+1))
			break
		fi
	fi

	if [ $number -eq 1 ]
	then
		high=$magicNumber
	else
		low=$(( $magicNumber + 1 ))
	fi
done

echo "Magic number is " $magicNumber
