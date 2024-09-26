<#
.SYNOPSIS
	Closes Notepad
.DESCRIPTION
	This PowerShell script closes the Notepad application gracefully.
#>

& "$PSScriptRoot/say.ps1" "Okay."
& "$PSScriptRoot/close-program.ps1" "Notepad" "notepad" "notepad"
exit 0 # success
