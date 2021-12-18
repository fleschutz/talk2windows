<#
.SYNOPSIS
	Shows the Google Chrome manual
.DESCRIPTION
	This PowerShell script launches the Web browser with the Google Chrome manual.
.EXAMPLE
	PS> ./show-chrome-manual
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://support.google.com/chrome/?hl=en"
exit 0 # success
