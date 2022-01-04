<#
.SYNOPSIS
	Closes the Chrome browser
.DESCRIPTION
	This PowerShell script closes the Google Chrome Web browser gracefully.
.EXAMPLE
	PS> ./close-chrome
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/close-program.ps1" "Google Chrome" "chrome" "chrome"
exit 0 # success
