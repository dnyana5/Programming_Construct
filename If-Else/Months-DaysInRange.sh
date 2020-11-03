#!/bin/bash -x

read -p "enter days: " days
read -p "enter months: " months

if [ $months -gt 3 -a $months -lt 6 ]
then
	echo "True"
else
	if [ $months -eq 3 ]
	then
		if [ $days -ge 20 ]
		then
			echo "True"
		else
			echo "False"
		fi
	elif [ $months -eq 6 ]
	then
		if [ $days -lt 20 ]
		then
			echo "true"
		else
			echo "false"
		fi
	else
		echo "False"
	fi
fi
