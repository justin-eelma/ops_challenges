#!/bin/bash

# Script: Ops 201 Class 05 Ops Challenge
# Author: Justin Eelma
# Date of last revision: 8/2/22
# Purpose: a script that outputs a report about 
# current system CPU and RAM performance of a Ubuntu 
# Linux computer

# main


lshw -class processor | grep CPU 
echo "memory:"
lshw -class memory | grep -A 6 bank:0
lshw -class memory | grep -A 6 bank:1
echo "display adapter:"
lshw -class display | grep product
echo "network controller:"
lshw -class network | grep product
