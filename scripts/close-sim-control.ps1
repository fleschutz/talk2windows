<#
.SYNOPSIS
	Closes SimControl
.DESCRIPTION
	This PowerShell script closes the SimControl application gracefully.
#>

& "$PSScriptRoot/say.ps1" "Okay."
tskill SimControl
