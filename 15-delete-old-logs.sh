#!/bin/bash

$Source_dir="/tmp/shellscriptlogs/"

$R="\e[31m"
$G="\e[32m"
$Y="\e[33m"
$N="\e[0m"

if [ ! d $Source_dir ]
then
    echo -e "$R ERROR :: Source directory does not exist $N"
fi

FILES_TO_DELETE=$(find $Source_dir -type f -mtime +14 -name "*.log")

while IFS = read -r line
do
    echo "Deleting file" $line
    rm -rf $line
done <<< $FILES_TO_DELETE