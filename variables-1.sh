#!/bin/bash


startdate=$(date +%s)
echo "counting starts"
sleep 10
echo "counting ends"
enddate=$(date +%s)

totaltime=$((enddate-startdate))

echo "total time $totaltime"