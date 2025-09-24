#!/bin/bash

number=$1

if [$(($number % 2) -eq 0)]; then
echo "even number $number is even"
else 
echo "even number $number is odd"
fi