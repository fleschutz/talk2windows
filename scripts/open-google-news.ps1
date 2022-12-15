<#
.SYNOPSIS
	Opens Google News
.DESCRIPTION
	This PowerShell script launches the Web browser with Google News.
.EXAMPLE
	PS> ./open-google-news
.LINK
	https://github.com/fleschutz/talk2windows
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

& "$PSScriptRoot/_reply.ps1" "Okay."
& "$PSScriptRoot/open-browser.ps1" "https://news.google.com"
exit 0
