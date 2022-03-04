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

& "$PSScriptRoot/_reply.ps1" "Okay"
if ("$Cmd" -ne "") {
	Start-Process wt.exe "$Cmd"
} else {
	Start-Process wt.exe
}
exit 0 # success
