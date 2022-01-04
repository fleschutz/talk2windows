<#
.SYNOPSIS
	Open the Firefox manual
.DESCRIPTION
	This PowerShell script launches the Web browser with the Firefox manual.
.EXAMPLE
	PS> ./open-firefox-manual
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://support.mozilla.org/en-US/products/firefox"
exit 0 # success
