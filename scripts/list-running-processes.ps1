<#
.SYNOPSIS
	Lists the running Processes
.DESCRIPTION
	This PowerShell script lists the running processes in a table.
.EXAMPLE
	PS> ./list-running-processes
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_reply.ps1" "OK."
Get-Process | Out-GridView -wait
exit 0 # success
