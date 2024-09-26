<#
.SYNOPSIS
	Closes Serenade
.DESCRIPTION
	This PowerShell script closes the Serenade application gracefully.
#>

& "$PSScriptRoot/say.ps1" "See you."
TaskKill /im Serenade.exe /f

