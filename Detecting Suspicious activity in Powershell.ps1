# Detecting Suspicious activity in Powershell

Get-WinEvent -Logname "Microsoft-Windows-Powershell/Operational" -MaxEvents 3 | Format-Table -Autosize -Wrap