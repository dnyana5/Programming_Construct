#!/bin/bash -x

function Palindrome() {
s=0;
rev=""
number=$1;

temp=$number

while [ $number -gt 0 ]
do
	s=$(( $number % 10 ))
	number=$(( $number / 10 ))
	rev=$( echo ${rev}${s} )
done

if [ $temp -eq $rev ];
then
	echo "Number is palindrome"
else
	echo "Number is NOT palindrome"
fi
}

value=$( Palindrome "44144" );
value2=$( Palindrome "1524" );
echo "$value"
echo "$value2"
