# Get encoded commands

Get-WinEvent -LogName "Microsoft-Windows-Powershell/Operational" |
Where-Object {$_.Message -match "EncodedCommand"} | Format-Table -AutoSize -Wrap

# To encode the command
Get-Process

$cmd = "Get-Process"
$bytes = [System.Text.Encoding]::unicode.GetBytes($cmd)
$encoded = [convert]::ToBase64String($bytes)

powershell.exe -enc $encoded

[System.Text.Encoding]::Unicode.GetString([convert]::FromBase64String($encoded))