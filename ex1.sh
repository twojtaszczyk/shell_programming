#!/bin/bash

# Exercise 1:
echo "Shell scripting is Fun!"
echo

# Exercise 2:
SENTENCE="Shell scripting is Fun!"
echo $SENTENCE
echo

# Exercise 3:
HOSTNAME_1=$(hostname)
HOSTNAME_2=`hostname`
echo "This script is running on ${HOSTNAME_1}"
echo "This script is running on ${HOSTNAME_2}"
echo

# Exercise 4:
if [ -e /etc/shadow ]
then
    echo "Shadow passwords are enabled."
    if [ -w /etc/shadow ]
    then
        echo "You have permissions to edit /etc/shadow."
    else
        echo "You do NOT have permissions to edit /etc/shadow."
    fi
fi
echo

# Exercise 5:
MAMMALS="man bear pig dog cat"
for MAMMAL in $MAMMALS
do
    echo $MAMMAL
done
echo
