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
# found folder or file in user directory
    if [ -f $location/$mynameis ]
        then 
            echo $searchthis "exists."
    fi
# did not find file or folder in user directory
    if [ ! -f $location/$mynameis ]
        then
            echo $name "does not exist"
# asking user for creation type: folder or file            
            echo "would you like to create a folder? [ y / n ]"
            read folderdecision
                if [ $folderdecision == y ]; then
                    mkdir $location/$mynameis
                else
                    echo "would you like to create a file? [ y / n ]"
                    read filedecision 
                        if [ $filedecision == y ]; then
                        touch $location/$mynameis
                        fi
                fi          
    fi

done

