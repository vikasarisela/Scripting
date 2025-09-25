#!/bin/bash

# echo "give a number"
# read number
# if [ $(($number % 2)) -eq 0 ]; then
# echo "given number $number is even"
# else 
# echo "given number $number is odd"
# fi



NUMBER=$1

if [ $NUMBER -lt 10 ]; then
    echo "Given number $NUMBER is less than 10"
elif [ $NUMBER -eq 10 ]; then
    echo "Given number $NUMBER is equal to 10"
else
    echo "Given number $NUMBER is greater than to 10"
fi