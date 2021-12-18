<#
.SYNOPSIS
	Opens the Tesla website
.DESCRIPTION
	This PowerShell script launches the Web browser with the Tesla website.
.EXAMPLE
	PS> ./open-tesla-website
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://www.tesla.com"
exit 0 # success
