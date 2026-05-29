#!?bin/bash

ID=$(id -u)

# Timestamp=$(date +%F-%H-%M-%S)
# LOG_FILE= "/tmp/$0-$Timestamp.log"

validate(){
    if [ $1 -ne 0 ]
    then
        echo "Error :: $2 is failed"
        exit 1
    else
        echo "$2 is successful"
    fi
}

if [ $ID -ne 0 ]
then 
    echo "ERROR :: You are nnot a root user. Pls get the access"
    exit 1
else
    echo "You are a root user"
fi

yum install mysql -y 

validate $? "Installing MYSQL"

yum install git -y 

validate $? "Installing GIT" 