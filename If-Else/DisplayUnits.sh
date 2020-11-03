#!/bin/bash -x

read -p "enter a number: " number

if [ $number -eq 1 ]
then
        echo "Unit";
elif [ $number -eq 10 ]
then
        echo "ten";
elif [ $number -eq 100 ]
then
        echo "hundred";
elif [ $number -eq 1000 ]
then
        echo "thousand";
fi
