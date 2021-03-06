<#
.SYNOPSIS
	Closes the Windows Terminal app
.DESCRIPTION
	This PowerShell script closes the Windows Terminal application gracefully.
.EXAMPLE
	PS> ./close-windows-terminal
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/close-program.ps1" "Windows Terminal" "WindowsTerminal" "WindowsTerminal"
exit 0 # success
