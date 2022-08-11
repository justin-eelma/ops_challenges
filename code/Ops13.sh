#!/bin/bash

# Script: Ops 201 Class 13 Ops Challenge
# Author: Justin Eelma
# Date of last revision: 8/10/22
# Purpose: Create a script that asks a user to type a domain 
# then displays information about the typed domain

# main

# ask for domain 

echo "what is your domain?" 

read www

# make function with user input variable 

function dns_details {
    whois $www 
    dig $www
    host $www
    nslookup $www
}

# creating document of function

dns_details > dns_details.txt

# printing document to terminal 

cat dns_details.txt

# end
