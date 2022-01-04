<#
.SYNOPSIS
	Launches the Windows Terminal app
.DESCRIPTION
	This PowerShell script launches the Windows Terminal application.
.EXAMPLE
	PS> ./open-windows-terminal
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

Start-Process wt.exe
exit 0 # success
