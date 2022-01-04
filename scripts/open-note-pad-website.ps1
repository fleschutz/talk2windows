<#
.SYNOPSIS
	Opens the Notepad website
.DESCRIPTION
	This PowerShell script launches the Web browser with the Notepad website.
.EXAMPLE
	PS> ./open-note-pad-website
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/PowerShell
#>

& "$PSScriptRoot/open-browser.ps1" "https://notepad.js.org/"
exit 0 # success
