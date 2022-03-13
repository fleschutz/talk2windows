<#
.SYNOPSIS
	Opens Google Blogger
.DESCRIPTION
	This PowerShell script launches the Web browser with Google Blogger.
.EXAMPLE
	PS> ./open-google-blogger
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_reply.ps1" "Blogger..."
& "$PSScriptRoot/open-browser.ps1" "https://www.blogger.com"
exit 0 # success
