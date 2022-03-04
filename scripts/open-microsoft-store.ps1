<#
.SYNOPSIS
	Launches Microsoft Store
.DESCRIPTION
	This PowerShell script launches the Microsoft Store application.
.EXAMPLE
	PS> ./open-microsoft-store
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_reply.ps1" "Okay"
Start-Process ms-windows-store:
exit 0 # success
