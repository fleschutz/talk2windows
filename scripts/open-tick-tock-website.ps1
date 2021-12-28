<#
.SYNOPSIS
	Opens the TikTok website
.DESCRIPTION
	This PowerShell script launches the Web browser with the TikTok website.
.EXAMPLE
	PS> ./open-tick-tock-website
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://www.tiktok.com"
exit 0 # success
