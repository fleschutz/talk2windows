<#
.SYNOPSIS
	Opens YouTube 
.DESCRIPTION
	This PowerShell script launches the Web browser with the YouTube website.
.EXAMPLE
	PS> ./open-youtube
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_reply.ps1" "Okay."
$CurrentYear = (Get-Date).Year
& "$PSScriptRoot/open-browser.ps1" "https://www.youtube.com/results?search_query=Mega+Hits+$CurrentYear"
exit 0 # success
