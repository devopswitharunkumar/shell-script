#!?bin/bash

ID=$(id -u)

Timestamp=$(date +%F-%H-%M-%S)
LOG_FILE="/tmp/$0-$Timestamp.log"

R="\e[31m"
G="\e[32m"
Y="\e[33m"


validate(){
    if [ $1 -ne 0 ]
    then
        echo -e "Error :: $2 is $R failed"
        exit 1
    else
        echo -e "$2 is $G successful"
    fi
}

if [ $ID -ne 0 ]
then 
    echo "ERROR :: You are nnot a root user. Pls get the access"
    exit 1
else
    echo "You are a root user"
fi

yum install mysql -y &>> $LOG_FILE

validate $? "Installing MYSQL"

yum install git -y &>> $LOG_FILE

validate $? "Installing GIT" 