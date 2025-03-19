<#
.SYNOPSIS
	Closes the Windows Terminal 
.DESCRIPTION
	This PowerShell script closes the Windows Terminal app gracefully.
#>

& "$PSScriptRoot/say.ps1" "Okay."
& "$PSScriptRoot/close-program.ps1" "Windows Terminal" "WindowsTerminal" "WindowsTerminal"
exit 0 # success
