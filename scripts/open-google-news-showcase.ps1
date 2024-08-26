<#
.SYNOPSIS
	Opens Google News Showcase
.DESCRIPTION
	This PowerShell script launches the Web browser with Google News Showcase.
#>

& "$PSScriptRoot/_reply.ps1" "Hold on..."
& "$PSScriptRoot/open-browser.ps1" "https://news.google.com/showcase"
exit 0
