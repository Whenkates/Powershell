# Defender Logs

Get-WinEvent -LogName "Microsoft-Windows-Windows Defender/Operational" | Format-Table -AutoSize -Wrap

# List users information

Get-WinEvent -LogName Security | Where-Object {$_.Message -match "administrator"}