#/bin/bash

first_name=$1
sec_name=$2
echo "Hi $first_name"
echo "hello $sec_name"

DATE=$(date)

echo "print date ${DATE}" 

echo "all variables passed to the script $@"
echo "all variables passed to the script $*"