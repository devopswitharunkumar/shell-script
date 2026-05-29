#!?bin/bash

ID=$(id -u)

Timestamp=$(date +%F-%H-%M-%S)
LOG_FILE="/tmp/$0-$Timestamp.log"

R="\e[31m"
G="\e[32m"
Y="\e[33m"
Y="\e[0m"


validate(){
    if [ $1 -ne 0 ]
    then
        echo -e "$R Error :: $2 is failed $N"
        exit 1
    else
        echo -e "$G $2 is successful $N"
    fi
}

if [ $ID -ne 0 ]
then 
    echo -e "$R ERROR :: You are nnot a root user. Pls get the access $N"
    exit 1
else
    echo -e "$G You are a root user $N"
fi

yum install mysqsdl -y &>> $LOG_FILE

validate $? "Installing MYSQL"

yum install giddt -y &>> $LOG_FILE

validate $? "Installing GIT" 