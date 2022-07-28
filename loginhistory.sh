#!/bin/bash

# Script: Ops 201 Class 03 Ops Challenge 
# Author: Justin Eelma
# Date of latest revision: 7/26/22
# Purpose: Print login history

#  Main

 print_user_history() {
 
	echo "Here are your logins..."
	echo "$(last)"
	
 } 

print_user_history

# End
