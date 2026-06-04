#!/bin/bash

set -e

yum install nginx -y

touch example.txt

echo "Before wrong command"

dasfegrs

echo "After wrong command"

cd /tmp

cd /home/centos