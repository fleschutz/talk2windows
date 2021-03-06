<#
.SYNOPSIS
	Opens the Volkswagen manual
.DESCRIPTION
	This PowerShell script launches the Web browser with the Volkswagen manual.
.EXAMPLE
	PS> ./open-volkswagen-manual
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://userguide.volkswagen.de"
exit 0 # success
