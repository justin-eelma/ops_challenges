#!/bin/bash

# Script: Ops 201 Class 05 Ops Challenge
# Author: Justin Eelma
# Date of last revision: 8/1/22
# Purpose: Create a script that detects if a file or directory exists, then creates it if it does not exist.

# The script must use at least one array, one loop, and one conditional

# main

location=/home/$USER

echo "what is the file or directory you have in mind..."

read searchthis

# creating array from input
FILES=( $searchthis )

# defining variable
for mynameis in $FILES
do
    if [ -f $location/$mynameis ]
        then 
            echo $searchthis "exists."
        else
            echo $name "does not exist."
            touch $location/$mynameis
            echo "created:" $location/$mynameis
    fi
done

#end
