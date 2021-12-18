#!/bin/bash

# Exercise 2:
read -p "Please enter a file extension:" FILE_EXTENSION
read -p "Please enter a file prefix: " FILE_PREFIX

if ! [ $FILE_PREFIX ]
then
    FILE_PREFIX=$(date +%Y%m%d)
fi
for FILE in *.$FILE_EXTENSION
do
    echo "${FILE} => ${FILE_PREFIX}${FILE}"
    mv $FILE $FILE_PREFIX$FILE
done
