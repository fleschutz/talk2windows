<#
.SYNOPSIS
	Lists the Tasks
.DESCRIPTION
	This PowerShell script lists the scheduled tasks in a table.
.EXAMPLE
	PS> ./list-tasks
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_reply.ps1" "OK."
Get-ScheduledTask | | Out-GridView
sleep 600
exit 0 # success
