<#
.SYNOPSIS
	Shows the Firefox manual
.DESCRIPTION
	This script launches the Web browser with the Firefox manual.
.EXAMPLE
	PS> ./show-firefox-manual
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_launch-browser.ps1" "https://support.mozilla.org/en-US/products/firefox"
exit 0 # success
