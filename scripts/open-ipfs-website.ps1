<#
.SYNOPSIS
	Opens the IPFS website
.DESCRIPTION
	This PowerShell script launches the Web browser with the IPFS website.
.EXAMPLE
	PS> ./open-ipfs-website
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://ipfs.io/"
exit 0 # success
