<#
.SYNOPSIS
	Opens a fire place website
.DESCRIPTION
	This PowerShell script launches the Web browser with a fire place website.
.EXAMPLE
	PS> ./open-fire-place
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://freefireplaces.com"
exit 0 # success
