<#
.SYNOPSIS
	Opens YouTube 
.DESCRIPTION
	This PowerShell script launches the Web browser with YouTube.com
.EXAMPLE
	PS> ./open-youtube
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_reply.ps1" "Okay."
& "$PSScriptRoot/open-browser.ps1" "https://www.youtube.com/results?search_query=Summer+Mega+Hits+2023"
exit 0 # success
