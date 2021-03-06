<#
.SYNOPSIS
	Opens the Facebook website
.DESCRIPTION
	This PowerShell script launches the Web browser with the Facebook website.
.EXAMPLE
	PS> ./open-facebook-website
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://www.facebook.com"
exit 0 # success
