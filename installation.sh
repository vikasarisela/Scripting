#!bin/bash

userid=$(id -u)

if [ $userid -ne 0 ];then
echo "required root privliges"
exit 1
fi

dnf install sql -y
if [ $? -ne 0];then
echo "installation failed"
else
echo "installed successfully"
fi   