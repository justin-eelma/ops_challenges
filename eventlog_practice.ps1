# Output all events from the System event log that occurred in the last 24 hours to a file on your desktop named last_24.txt.

$EventDate=Get-EventLog -LogName System -After (Get-Date).AddDays(-1) 
$EventDate | Group-Object | Out-File -filepath "C:\Users\$USER\Desktop\last_24.txt"

# Output all “error” type events from the System event log to a file on your desktop named errors.txt.

$EventError=Get-EventLog System -EntryType Error
$EventError | Sort-Object Time -Descending | Select -First 20 | Out-file -filepath "C:\Users\$USER\Desktop\errors.txt"

# Print to the screen all events with ID of 16 from the System event log.

Get-EventLog -LogName System | Where-Object {$_.EventID -eq 16}

# Print to the screen the most recent 20 entries from the System event log.’

Get-EventLog -LogName System -newest 20

# Print to the screen all sources of the 500 most recent entries in the System event log. 
# Ensure that the full lines are displayed (get rid of the … and show the entire text).

$EVENT500=Get-EventLog -LogName System -Newest 500 
$EVENT500 | Group-Object -Property source | format-table -wrap -autosize

