#!/bin/bash -x

fact=0
function primefactor()
{
        arr=$1
        for (( i=2; $i<=$num; i++ ))
        do
                if [ $(($num%$i)) -eq 0 ]
                then
                        arr[fact]=$i
                        ((fact++))
                        num=$(($num/$i))
                fi

                if [ $(($num%$i)) -eq 0 ]
                then
                        ((i--))
                fi
        done
        echo "${arr[@]}"
}
read -p "Enter a number: " num
echo "Prime factors of Number are" "$( primefactor $((number)))"
