#!/bin/bash -x

read -p "enter years:" years
if [ $((years%4)) -eq 0 ]
then
	if [ $((years%100)) -eq 0 ]
	then
		if [ $((years%400)) -eq 0 ]
		then
			echo "leap year"
		else
			echo "not a leap year"
		fi
	else
		echo " leap year"
	fi
else
	echo "not a leap year"
fi
