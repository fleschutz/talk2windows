<#
.SYNOPSIS
	Opens the GQ Magazine
.DESCRIPTION
	This PowerShell script launches the Web browser with the GQ Magazine website.
.EXAMPLE
	PS> ./open-gq-magazine
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://www.gq.com"
exit 0 # success
