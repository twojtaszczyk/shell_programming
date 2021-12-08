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

# Exercise 6:
read -p "Enter item name: " USER_FILE
if [ -f ${USER_FILE} ]
then
    echo "You provided a file item."
elif [ -d ${USER_FILE} ]
then
    echo "You provided a directory item".
else
    echo "Provided item not found."
fi
echo

# Exercise 7:
if [ -f $1 ]
then
    echo "You provided a file item."
elif [ -d $1 ]
then
    echo "You provided a directory item".
else
    echo "Provided item not found."
fi
echo

# Exercise 8:
echo
for PARAM_IN in $@
do
    echo ${PARAM_IN}
    if [ -f ${PARAM_IN} ]
    then
        echo "You provided a file item."
    elif [ -d ${PARAM_IN} ]
    then
        echo "You provided a directory item".
    else
        echo "Provided item not found."
    fi
    echo
done
