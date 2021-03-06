<#
.SYNOPSIS
	Opens the CIA website
.DESCRIPTION
	This PowerShell script launches the Web browser with the CIA website (Central Intelligence Agency).
.EXAMPLE
	PS> ./open-cia-website
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://www.cia.gov/"
exit 0 # success
