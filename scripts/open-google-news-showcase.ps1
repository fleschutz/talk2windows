<#
.SYNOPSIS
	Opens Google News Showcase
.DESCRIPTION
	This PowerShell script launches the Web browser with Google News Showcase.
#>

& "$PSScriptRoot/say.ps1" "Hold on..."
& "$PSScriptRoot/open-browser.ps1" "https://news.google.com/showcase"
