<#
.SYNOPSIS
	Launches the Clock app
.DESCRIPTION
	This PowerShell script launches the Clock application.
#>

& "$PSScriptRoot/say.ps1" "Okay."
start-process ms-clock:
