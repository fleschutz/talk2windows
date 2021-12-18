<#
.SYNOPSIS
	Opens the Walmart website
.DESCRIPTION
	This PowerShell script launches the Web browser with the Walmart website.
.EXAMPLE
	PS> ./open-walmart-website
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://www.walmart.com/"
exit 0 # success
