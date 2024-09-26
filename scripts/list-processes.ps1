<#
.SYNOPSIS
	Lists the Processes
.DESCRIPTION
	This PowerShell script lists the running processes in a table.
#>

& "$PSScriptRoot/say.ps1" "OK."
Get-Process | Out-GridView -wait
