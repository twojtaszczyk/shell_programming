#!/bin/bash

# Exercise 1:
PREFIX=$(date +%Y%m%d)
for FILE in *.jpg
do
    mv $FILE "${PREFIX}${FILE}"
done
