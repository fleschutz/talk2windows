<#
.SYNOPSIS
	Launches the Notepad app
.DESCRIPTION
	This PowerShell script launches the Notepad application.
.EXAMPLE
	PS> ./open-note-pad
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	& "$PSScriptRoot/_reply.ps1" "Okay."
	Start-Process notepad.exe
	exit 0 
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}