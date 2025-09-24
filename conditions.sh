#!/bin/bash

number=$1

if temp=$[number % 2] == 0
echo "even number $temp"
else 
echo "not even"
fi