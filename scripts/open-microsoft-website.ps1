<#
.SYNOPSIS
	Opens the Microsoft website
.DESCRIPTION
	This PowerShell script launches the Web browser with the Microsoft website.
.EXAMPLE
	PS> ./open-microsoft-website
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://www.microsoft.com/"
exit 0 # success
