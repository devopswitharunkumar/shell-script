#!/bin/bash

ID=$(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"


Timestamp=$(date +%F-%H-%M-%S)
LOG_FILE="/tmp/$0-$Timestamp.log"

if [ $ID -ne 0]
then
    echo -e "$R ERROR :: please run with root user or sudo $N"
    exit 1
else
    echo -e  "$G You are a root user, please proceed $N"
fi

validate(){
    if [ $1 -ne 0]
    then
        echo -e "$R $2 is failed $N"
    else
        echo -e "$G $2 is successful $N"
    }

#echo "All arguments passed : $@"
#if i want to insttall multiple packages with the help of loops,
#then i can use $@ to get all the arguments passed to the script and then loop through them and install them one by one"
#in bash we can give like  sh <file name> git postman mysql redis 

for package in $@
do
    yum list installed $package &>> $LOG_FILE
    if [ $? -ne 0 ]
    then 
        yum install $package -y &>> $LOG_FILE
        validate $? "Installing $package"
    else 
        echo -e "$Y $package is already installed So SKIPPED $N"
    fi
done