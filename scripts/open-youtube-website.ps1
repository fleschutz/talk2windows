<#
.SYNOPSIS
	Opens the YouTube website
.DESCRIPTION
	This PowerShell script launches the Web browser with the YouTube website.
.EXAMPLE
	PS> ./open-youtube-website
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://www.youtube.com"
exit 0 # success
