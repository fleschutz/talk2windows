<#
.SYNOPSIS
	Opens the Wired Magazine
.DESCRIPTION
	This PowerShell script launches the Web browser with the Wired magazine.
.EXAMPLE
	PS> ./open-wired-magazine
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://www.wired.com/"
exit 0 # success
