<#
.SYNOPSIS
	Opens the Spiegel Magazine
.DESCRIPTION
	This PowerShell script launches the Web browser with the Spiegel magazine website.
.EXAMPLE
	PS> ./open-spiegel-magazine
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://www.spiegel.de"
exit 0 # success
