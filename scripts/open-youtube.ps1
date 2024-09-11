<#
.SYNOPSIS
	Opens YouTube 
.DESCRIPTION
	This PowerShell script launches the Web browser with YouTube.com
#>

& "$PSScriptRoot/open-browser.ps1" "https://www.youtube.com/results?search_query=Mega+Hits+2024"
& "$PSScriptRoot/_reply.ps1" "Your YouTube."
