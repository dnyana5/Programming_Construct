#!/bin/bash -x

echo "1.CELCIUS TO FARENHEIT"
echo "FARENHEIT TO CELCIUS"

read -p "Enter your choice: " choice
read -p "Enter degree you want to convert " degree

function Conversion() {
case "$choice" in
	1)
		if (( $degree>0 && $degree<100 ))
		then
			degf=`echo "scale=2; ($degree*9/5)+32" | bc`
			echo $degf
		else
			echo "Invalid "
		fi
		;;
	2)
		if (( $degree>32 && $degree<212 ))
		then
			degc=`echo "scale=2; ($degree-32)*5/9" | bc `
			echo $degc
		else
			echo "Invalid "
		fi
		;;
	*)
		echo "Invalid choice"
		;;
	esac
}

result=$( Conversion $choice $degree )
echo $result
