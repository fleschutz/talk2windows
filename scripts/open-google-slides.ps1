<#
.SYNOPSIS
	Opens Google Slides
.DESCRIPTION
	This PowerShell script launches the Web browser with Google Slides.
.EXAMPLE
	PS> ./open-google-slides
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://docs.google.com/presentation/u/0/"
exit 0 # success
