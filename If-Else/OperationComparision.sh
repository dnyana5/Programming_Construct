#!/bin/bash -x

read -p "enter first number: " a
read -p "enter second number: " b
read -p "enter third number: " c

prob1="$(($a+$b*$c))"
prob2="$(($c+$a/$b))"
prob3="$(($a%$b+$c))"
prob4="$(($a*$b+$c))"
max=$prob1
min=$prob1
if [ $max -lt $prob2 ]
then
	max=$prob2;
fi
if [ $min -gt $prob2 ]
then
	min=$prob2;
fi
if [ $max -lt $prob3 ]
then
        max=$prob3;
fi
if [ $min -gt $prob3 ]
then
        min=$prob3;
fi
if [ $max -lt $prob4 ]
then
        max=$prob4;
fi
if [ $min -gt $prob4 ]
then
        min=$prob4;
fi
echo "$max=maximum"
echo "$min=minimum"
