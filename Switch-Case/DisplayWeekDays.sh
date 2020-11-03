#!/bin/bash -x

read -p "Enter week day:" days

case $days in
	1)
		echo "sunday"
		;;
	2)
		echo "Monday"
		;;
	3)
		echo "Tuesday"
		;;
	4)
		echo "Wednesday"
		;;
	5)
		echo "Thursday"
		;;
	6)
		echo "Friday"
		;;
	7)
		echo "Saturday"
		;;
	*)
		echo " Enter days between 1 to 7 "
		;;

esac
