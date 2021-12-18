<#
.SYNOPSIS
	Opens the Twitter website
.DESCRIPTION
	This PowerShell script launches the Web browser with the Twitter website.
.EXAMPLE
	PS> ./open-twitter-website
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://www.twitter.com"
exit 0 # success
