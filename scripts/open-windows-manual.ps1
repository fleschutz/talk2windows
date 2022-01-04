<#
.SYNOPSIS
	Opens the Microsoft Windows manual
.DESCRIPTION
	This PowerShell script launches the Web browser with the Microsoft Windows manual.
.EXAMPLE
	PS> ./open-windows-manual
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://docs.microsoft.com/en-us/windows/"
exit 0 # success
