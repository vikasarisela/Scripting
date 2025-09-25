#!/bin/bash


startdate=$(date +%s)

sleep 10

enddate=$(date +%s)

totaltime=$((enddate-startdate))

echo "total time $totaltime"