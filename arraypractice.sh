#!/bin/bash

# Script: Ops 201 Class 04 Ops Challenge
# Author: Justin Eelma
# Date of last revision: 7/28/22
# Purpose: Create four directories with sample files in each directory

# main

# make dir{1...4}

mkdir dir1 dir2 dir3 dir4

# make array

dirs=(dir1 dir2 dir3 dir4)

# referencing each dir and creating .txt file in each dir

touch ${dirs[0]}/txt1.txt
touch ${dirs[1]}/txt2.txt
touch ${dirs[2]}/txt3.txt
touch ${dirs[3]}/txt4.txt

# feedback message

echo "Your new directories & files:"
ls ${dirs[@]}

# end
