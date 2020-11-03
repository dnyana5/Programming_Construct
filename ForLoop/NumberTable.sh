#!/bin/bash -x

read -p "Enter a number: " n

for (( i=1;i<=n;i++ ))
do
	echo "Table of 2 x $i = $((2*$i))"
done
