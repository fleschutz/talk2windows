<#
.SYNOPSIS
	Opens the Wikipedia website
.DESCRIPTION
	This PowerShell script launches the Web browser with the Wikipedia website.
.EXAMPLE
	PS> ./open-wikipedia-website
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://www.wikipedia.org"
exit 0 # success
