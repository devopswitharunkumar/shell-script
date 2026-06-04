#!/bin/bash

Disk_usage=$(df -hT | grep -vE 'tmp/Filesystem')

Disk_Thresold=1

message=""

while IFS= read line
do
    usage=$(echo $line | awk '{print $6F}' | cut -d % -f1)
    partition=$(echo $line | awk '{print $1F}')
    if [ $usage -ge $Disk_Thresold ]
    then 
        message+="High Disk Usage on $partition: $usage\n"
    fi
done <<< $Disk_usage

echo -e "Message: $message"