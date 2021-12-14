#!/bin/bash

# Exercise 1:
function file_count() {
    local FILE_COUNT=$(ls | wc -l)
    echo "In present working directory ${FILE_COUNT} files founded."
}

file_count
echo

# Exercise 2:
function file_count2() {
    local FILE_COUNT=$(ls $1 | wc -l)
    echo "$1:"
    echo "${FILE_COUNT} files founded"
    echo
}

file_count2 /etc
file_count2 /var
file_count2 /usr/bin
