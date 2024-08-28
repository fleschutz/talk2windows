<#
.SYNOPSIS
	Closes Serenade
.DESCRIPTION
	This PowerShell script closes the Serenade application gracefully.
#>

TaskKill /im Serenade.exe /f
& "$PSScriptRoot/_reply.ps1" "Closed now."
