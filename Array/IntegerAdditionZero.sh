#!/bin/bash

array=(4 -2 -2 3 -1)
echo ${array[@]}

for(( count=0; count<5; count++ ))
do
	for(( i=count+1; i<5; i++ ))
	do
		for(( j=i+1; j<5; j++ ))
		do
			if [ $(($((array[count]))+$((array[i]))+$((array[j])))) -eq 0 ]
			then
				echo "${array[count]} ${array[i]} ${array[j]}"
			fi
		done
	done
done
