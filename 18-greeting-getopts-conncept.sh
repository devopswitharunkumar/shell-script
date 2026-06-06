#!/bin/bash

Name=""
Wishes=""


Usage(){
    echo "Usage : $(basename $0) -n <name> -w <wishes>"
    echo  "Options::"
    echo " -n, Specify the name (mandatory)"
    echo " -w, Specify the wishes. (Optional). Default is Good Morning"
    echo " -h, Display help and exit"
}


# while getopts "n:w:h" option
# do 
# ----
# ---
# done

# or
while getopts ":n:w:h" opt; do
    case $opt in
        n) Name=$OPTARG;;
        W) Wishes=$OPTARG;;
        \?) echo "Invalid option: -"$OPTARG"" >&2; Usage ; exit;;
        :) Usage ; exit;;
        h) Usage; exit;;
    esac 
done



if [ -z "$Name" ] || [ -z "$Wishes" ];  then
    echo "Error : -n and -w are mandatory options"
    Usage
    exit
fi

echo "Hello $Name, $Wishes. I have been learning DevOps Course"