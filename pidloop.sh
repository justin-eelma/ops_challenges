#!/bin/bash

# Script: Ops 201 Class 05 Ops Challenge
# Author: Justin Eelma
# Date of last revision: 7/29/22
# Purpose: Write a script that displays running processes, asks the user for a PID, then kills the process with that PID. Uses a loop.

# main

processes= ps -aux
statement="kill"

echo $processes
echo enter PID to $statement 

read chosen_one

for pid in $chosen_one
    do 
        sudo kill $pid
        echo $pid ${statement}ed
    done

# end
