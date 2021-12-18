<#
.SYNOPSIS
	Opens the HRworks website
.DESCRIPTION
	This PowerShell script launches the Web browser with the HRworks website.
.EXAMPLE
	PS> ./open-hr-works-website
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://www.hrworks.de"
exit 0 # success
