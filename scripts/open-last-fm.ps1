<#
.SYNOPSIS
	Opens the Last.fm website
.DESCRIPTION
	This PowerShell script launches the Web browser with the Last.fm website.
.EXAMPLE
	PS> ./open-last-fm
.LINK
	https://github.com/fleschutz/talk2windows
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

& "$PSScriptRoot/open-browser.ps1" "https://www.last.fm"
exit 0 # success
