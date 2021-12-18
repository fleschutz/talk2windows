<#
.SYNOPSIS
	Opens Google Search
.DESCRIPTION
	This PowerShell script launches the Web browser with the Google Search website.
.EXAMPLE
	PS> ./open-google-search
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://google.com"
exit 0 # success
