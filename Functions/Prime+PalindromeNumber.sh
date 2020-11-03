#!/bin/bash -x

function prime() {
read -p "Enter the number:" number
i=2;
while [ $i -lt 0 ]
do
  if [ $(( $number % $i )) -eq 0 ]
  then
    echo "$number is not a prime number."
    exit
   fi
i=$(( $i + 1 ))
done
     echo "$number is a prime."
}
prime



function palindrome() {
echo "The number is " $number

s=0;
rev=0
num=$number
temp=$number

while [ $num -gt 0 ]
do
        s=$(( $num % 10 ));
        num=$(( $num / 10));
        rev=$(( $rev * 10 + $s ))
done

if [ $temp -eq $rev ]
then
        echo "Number is palindrome."
else
        echo "number is not a palindrome."
fi
}

palindrome
