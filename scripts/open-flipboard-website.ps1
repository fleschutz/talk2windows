<#
.SYNOPSIS
	Opens the Flipboard website
.DESCRIPTION
	This PowerShell script launches the Web browser with the Flipboard website.
.EXAMPLE
	PS> ./open-flipboard-website
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://flipboard.com"
exit 0 # success
