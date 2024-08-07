<#
.SYNOPSIS
	Closes Serenade
.DESCRIPTION
	This PowerShell script closes the Serenade application gracefully.
#>

& "$PSScriptRoot/_reply.ps1" "Bye."
TaskKill /im Serenade.exe /f
exit 0 # success
