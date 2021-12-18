<#
.SYNOPSIS
	Opens the Unsplash website
.DESCRIPTION
	This PowerShell script launches the Web browser with the Unsplash website.
.EXAMPLE
	PS> ./open-unsplash-website
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://unsplash.com"
exit 0 # success
