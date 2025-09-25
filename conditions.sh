#!/bin/bash

echo "give a number"
read number
if [ $(($number % 2)) -eq 0 ]; then
echo "given number $number is even"
else 
echo "given number $number is odd"
fi


number=$1

if [$((number -l 10))]; then
echo "$number is  less than 10"
else
echo "$number is greater than 10"