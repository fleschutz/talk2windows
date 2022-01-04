<#
.SYNOPSIS
	Closes the Notepad app
.DESCRIPTION
	This PowerShell script closes the Notepad application gracefully.
.EXAMPLE
	PS> ./close-note-pad
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/close-program.ps1" "Notepad" "notepad" "notepad"
exit 0 # success
