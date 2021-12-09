#!/bin/bash

# Exercise 3:
cat /etc/shadow
FILE=$1
if [ $? ]
then
    echo "Command failed"
    exit 1
else
    echo "Command succeeded"
    exit 0
fi
