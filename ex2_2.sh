#!/bin/bash

# Exercise 2:
FILE=$1
if [ -f $FILE ]
then
    echo "It is a regular file."
    exit 0
elif [ -d $FILE ]
then
    echo "It is a directory."
    exit 1
else
    echo "It is some other type of file."
    exit 2
fi
