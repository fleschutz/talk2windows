<#
.SYNOPSIS
	Opens the Pixabay website
.DESCRIPTION
	This PowerShell script launches the Web browser with the Pixabay website.
.EXAMPLE
	PS> ./open-pixabay-website
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://pixabay.com"
exit 0 # success
