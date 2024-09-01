<#
.SYNOPSIS
	Closes Serenade
.DESCRIPTION
	This PowerShell script closes the Serenade application gracefully.
#>

& "$PSScriptRoot/_reply.ps1" "Okay, see you."
TaskKill /im Serenade.exe /f

