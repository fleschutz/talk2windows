<#
.SYNOPSIS
	Launches Notepad++
.DESCRIPTION
	This PowerShell script launches the Notepad++ application.
.EXAMPLE
	PS> ./open-note-pad-plus-plus
.LINK
	https://github.com/fleschutz/talk2windows
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

try {
	& "$PSScriptRoot/_reply.ps1" "Okay."
	Start-Process notepad++.exe
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
