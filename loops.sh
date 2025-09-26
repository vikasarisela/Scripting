#!/bin/bash





User_ID=( id -u )

if [ User_ID -ne 0 ]; then
echo "please run the script with root privligtes"
exit 1 
fi

# dnf list installed mysql 
# if [ $? -ne 0 ]; then
# dnf install mysql -y
# if [ $? -ne 0 ]; then
# echo "installed failed for mysql"
# else
# echo "successfully installed"
# fi
# else
# echo "mysql already installed"
# fi

for pacakage in $@
do 
    dnf list installed $pacakage
    if [ $? -ne 0 ]; then
    dnf install mysql -y
    validate $? "$pacakage"
    else
    echo "eady installed $package"
    fi
done

validate () {
if [ $? -ne 0 ]; then
echo "failed to install $2"
exit 1
else
echo "successfully installed $2"
fi
}

