#!bin/bash

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

dnf install mysq -y
validate $? "mysql"


dnf install mongodb-mongosh -y
validate $? "mongodb-mongosh"