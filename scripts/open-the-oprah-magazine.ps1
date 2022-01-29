<#
.SYNOPSIS
	Opens The Oprah Magazine
.DESCRIPTION
	This PowerShell script launches the Web browser with The Oprah Magazine website.
.EXAMPLE
	PS> ./open-the-oprah-magazine
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://www.oprah.com"
exit 0 # success
