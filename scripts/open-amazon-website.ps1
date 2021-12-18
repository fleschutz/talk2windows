<#
.SYNOPSIS
	Opens the Amazon website
.DESCRIPTION
	This PowerShell script launches the Web browser with the Amazon website.
.EXAMPLE
	PS> ./open-amazon-website
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://www.amazon.com"
exit 0 # success
