#!/bin/bash

Name=""
#Wishes=""    #--> user must provide this value no default value
Wishes="Good Morning"  #--> by default value 


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
        n) Name="$OPTARG";;
        w) Wishes="$OPTARG";;
        \?) echo "Invalid options: -"$OPTARG"" >&2; Usage; exit;;
        :) Usage; exit;;
        h) Usage; exit;;
    esac 
done


#if both are mandatory 
#if [ -z "$Name" ] || [ -z "$Wishes" ];  then
#echo "Error : Both -n and -w are mandatory options"
#only name is mandatory

if [ -z "$Name" ];  then
    echo "Error : -n is mandatory option" 
    Usage
    exit
fi

echo "Hello $Name, $Wishes. I have been learning DevOps Course."

#run like this ---> sudo sh 18-greeting-getopts-conncept.sh -n "Arun" -w "Good Evening"