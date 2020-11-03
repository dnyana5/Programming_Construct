#!/bin/bash

count=0
heads=0
tails=o

while [[ $heads -lt 11 && $tails -lt 11 ]]
do
   flip=$((RANDOM%2))

   if [ $flip -eq 1 ]
   then
      (( heads++ ))
   else
      (( tails++ ))
   fi
   ((count++))
done
echo "FLIPCOUNT-"$count
echo "HEADS-"$heads
echo "TAILS-"$tails
