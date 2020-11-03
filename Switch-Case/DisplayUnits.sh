#!/bin/bash -x

read -p "Enter number:" number

case $number in
        1)
                echo "Unit"
                ;;
        10)
                echo "ten"
                ;;
        100)
                echo "hundred"
                ;;
        1000)
                echo "Thousand"
                ;;
	*)
                echo " Invalid number. "
                ;;

esac
