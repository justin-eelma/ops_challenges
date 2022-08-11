ROBOCOPY C:\\Users\j.thompson\Desktop C:\\Users\j.thompson\Documents\Desktop_BackUp /LOG+:Backuplog.txt

:: Run batch file with Task Scheduler: 
:: 1) Right-click "Task Scheduler Library"
:: 2) Select "New Folder" 
:: 3) Confirm a name for the folder, ex "MyScripts"
:: 4) Select the Create Basic Task option
:: 5) Trigger-->"Daily", set start date/time when you want 
:: the script to run, and set to recur ___ days.
:: 6) Action-->"Start a program"-->"Browse" .bat file. 
