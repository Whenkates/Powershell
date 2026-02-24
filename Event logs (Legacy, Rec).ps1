# Event Logs -- Legacy way
Get-EventLog -LogName Security -Newest 2 | Format-Table -AutoSize -Wrap

# Event Logs --Reccomended Way
Get-WinEvent -LogName Security -MaxEvents 2 | Format-Table -AutoSize -Wrap