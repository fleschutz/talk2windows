<#
.SYNOPSIS
	Opens Google News Showcase
.DESCRIPTION
	This PowerShell script launches the Web browser with Google News Showcase.
.EXAMPLE
	PS> ./open-google-news-showcase
.LINK
	https://github.com/fleschutz/talk2windows
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

& "$PSScriptRoot/_reply.ps1" "Okay."
& "$PSScriptRoot/open-browser.ps1" "https://news.google.com/showcase"
exit 0
