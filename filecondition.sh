#!/bin/bash

# Script: Ops 201 Class 05 Ops Challenge
# Author: Justin Eelma
# Date of last revision: 8/1/22
# Purpose: Create a script that detects if a file or directory exists, then creates it if it does not exist.

# The script must use at least one array, one loop, and one conditional

# main

DIR=/home/$USER/

echo "what is the file or directory you have in mind..."

read searchthis

# creating array from input
file=( $searchthis )

# defining variable
for name in $file
do
    if [ -f $DIR/$name ]
        then 
            echo "$searchthis exists."
    else
        touch $DIR/$name
        echo "$name does not exist."
        echo "$name created in" ls $DIR/$name
    fi
done

# end
