<#
.SYNOPSIS
	Opens the Microsoft Edge manual
.DESCRIPTION
	This PowerShell script launches the Web browser with the Microsoft Edge manual.
.EXAMPLE
	PS> ./open-edge-manual
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://docs.microsoft.com/en-us/microsoft-edge/"
exit 0 # success
