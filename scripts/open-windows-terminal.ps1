<#
.SYNOPSIS
	Launch Windows Terminal
.DESCRIPTION
	This PowerShell script launches the Windows Terminal application.
.EXAMPLE
	PS> ./open-windows-terminal
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

param([string]$Cmd = "")

Start-Process wt.exe "$Cmd"
exit 0 # success
