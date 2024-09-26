<#
.SYNOPSIS
	Lists the Tasks
.DESCRIPTION
	This PowerShell script lists the scheduled tasks in a table.
#>

& "$PSScriptRoot/say.ps1" "OK."
Get-ScheduledTask | Out-GridView -wait
