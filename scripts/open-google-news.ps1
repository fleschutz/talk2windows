<#
.SYNOPSIS
	Opens Google News
.DESCRIPTION
	This PowerShell script launches the Web browser with Google News.
.EXAMPLE
	PS> ./open-google-news
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_reply.ps1" "News..."
& "$PSScriptRoot/open-browser.ps1" "https://news.google.com"
exit 0 # success
