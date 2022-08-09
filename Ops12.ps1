# Script: Ops 201 Class 11 Ops Challenge
# Author: Justin Eelma
# Date of last revision: 8/9/22
# Purpose: Write a Powershell script that returns the IPv4 address of the computer.

# making function to create a txt log of ipconfig, isolate IPv4 line, and remove rest of document
Function ipfilecreate { 
    ipconfig /all > ipconfig1.txt 
    Select-String -Path ipconfig1.txt -Pattern 'IPv4'
    rm ipconfig1.txt
}

# calling function
ipfilecreate

# end
