#!/bin//bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
    echo "ERROR :: please run with root user or sudo"
    exit 1
else
    echo "You are a root user, please proceed"
fi

yum install mysql -y

if [ $? -ne 0 ]
then
    echo "ERROR :: Installing MYSQL is failed"
    exit 1
else
    echo "Installing MYSQL is successful"
fi

yum install git -y

if [ $? -ne 0]
then
    echo "ERROR :: Installing GIT is failed"
    exit 1
else
    echo "Installing GIT is successful"
fi