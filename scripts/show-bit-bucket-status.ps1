<#
.SYNOPSIS
	Opens the Bitbucket status website
.DESCRIPTION
	This PowerShell script launches the Web browser with the Bitbucket status website.
.EXAMPLE
	PS> ./open-bit-bucket-status-website
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://bitbucket.status.atlassian.com/"
exit 0 # success
