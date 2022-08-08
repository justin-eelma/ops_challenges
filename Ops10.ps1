# Script: Ops 201 Class 10 Ops Challenge
# Author: Justin Eelma
# Date of last revision: 8/8/22
# Purpose: Analyze, initialize, and terminate processes using Powershell commands.

# Print to the terminal screen all active processes ordered by highest CPU time consumption at the top.
Get-Process | sort CPU -Descending

# Print to the terminal screen all active processes ordered by highest Process Identification Number at the top.
Get-Process | sort Id -Descending

# Print to the terminal screen the top five active processes ordered by highest Working Set (WS(K)) at the top.
Get-Process | Select-Object WorkingSet -First 5

# Start the process Internet Explorer (iexplore.exe) and have it open https://owasp.org/www-project-top-ten/.
Start-Process iexplore.exe | start https://owasp.org/www-project-top-ten/

# Start the process Internet Explorer (iexplore.exe) ten times using a for loop. Have each instance open https://owasp.org/www-project-top-ten/.
for ($x = 1; $x++; $x -le 10){
        Start-Process iexplore.exe | start https://owasp.org/www-project-top-ten/}

# Close all Internet Explorer windows.
Stop-Process -Name explorer -Confirm -PassThru

# Kill a process by its Process Identification Number. Choose a process whose termination won’t destabilize the system, 
# such as Internet Explorer or MS Edge.
Stop-Process -Id 2496 -Confirm -PassThru
