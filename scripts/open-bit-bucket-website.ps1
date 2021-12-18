<#
.SYNOPSIS
	Opens the Bitbucket website
.DESCRIPTION
	This PowerShell script launches the Web browser with the Bitbucket website.
.EXAMPLE
	PS> ./open-bit-bucket-website
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://bitbucket.org"
exit 0 # success
