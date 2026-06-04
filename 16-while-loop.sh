#!/bin/bash

File="/etc/passwd"

if [ ! d $Source_dir ]
then
    echo "ERROR :: Source directory does not exist"
fi

while IFS=":" read -r username password user_id
do
    echo "username":$username
    echo "password":$password
    echo "user_id":$user_id
done < $File
