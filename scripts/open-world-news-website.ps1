<#
.SYNOPSIS
	Opens Reuters World News website
.DESCRIPTION
	This PowerShell script launches the Web browser with the Reuters World News website.
.EXAMPLE
	PS> ./open-world-news-website
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://www.reuters.com/news/archive/worldNews"
exit 0 # success
