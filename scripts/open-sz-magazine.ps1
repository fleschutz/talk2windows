<#
.SYNOPSIS
	Opens the SZ Magazine
.DESCRIPTION
	This PowerShell script launches the Web browser with the SZ magazine website.
.EXAMPLE
	PS> ./open-sz-magazine
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://www.sz.de"
exit 0 # success
