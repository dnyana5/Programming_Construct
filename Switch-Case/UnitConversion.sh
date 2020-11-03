#!/bin/bash -x

read -p "Enter number:" number
read -p  $'\n1) Feet to inch\n2) Inch to Feet\n3) Feet to Meter\n4)Meter to feet\nEnter option: ' option
case $option in
        1)
	        Inches=$(echo "$number * 12" | bc )
                ;;
        2)
		Meter=$(echo "$number * 0.3048" | bc )
		;;
        3)
                Feet=$(echo "$number * 0.0833" | bc )
                ;;
        4)
                Feet=$(echo "$number * 3.281" | bc )
                ;;
        *)
                echo " invalid option "
                ;;

esac
