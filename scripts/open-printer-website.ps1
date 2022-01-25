<#
.SYNOPSIS
	Opens the Printer website
.DESCRIPTION
	This PowerShell script launches the Web browser with the printer's website.
.EXAMPLE
	PS> ./open-printer-website
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "http://printer/"
exit 0 # success
