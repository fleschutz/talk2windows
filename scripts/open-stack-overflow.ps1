<#
.SYNOPSIS
	Opens the Stack Overflow website
.DESCRIPTION
	This PowerShell script launches the Web browser with the Stack Overflow website.
.EXAMPLE
	PS> ./open-stack-overflow
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://stackoverflow.com"
exit 0 # success
