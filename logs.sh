#!/bin/bash

logs_folder="/var/log/shellscriptlogs"
scriptname=$( echo $0 | cut -d "." -f1 )
log_file="$logs_folder/$scriptname.log"

mkdir -p $logs_folder

userid=$(id -u)

if [ $userid -ne 0 ];then
echo "required root privliges"
exit 1
fi

validate (){
    if [ $1 -ne 0 ];then
echo "$2 installation failed"

else
echo " $2 installed successfully"
fi  
}

dnf install mysq -y &>>$log_file
validate $? "mysql"


dnf install python3 -y &>>$log_file
validate $? "python3"