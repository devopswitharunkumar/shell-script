#!?bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then 
    echo "ERROR :: You are nnot a root user. Pls get the access"
    exit 1
else
    echo "You are a root user"
fi

yum install mysql -y

if [ $? -ne 0 ]
then 
    echo "ERROR :: Installing is failed"
    exit 1
else
    echo "Installing is successful"
fi

yum install git -y 

if [ $? -ne 0 ]
then 
    echo "ERROR :: Installing git is failed"
    exit 1
else
    echo "Installing  git is successful"
fi