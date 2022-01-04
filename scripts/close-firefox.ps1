<#
.SYNOPSIS
	Closes the Firefox browser 
.DESCRIPTION
	This PowerShell script closes the Mozilla Firefox Web browser gracefully.
.EXAMPLE
	PS> ./close-firefox
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/close-program.ps1" "Mozilla Firefox" "firefox" "firefox"
exit 0 # success
