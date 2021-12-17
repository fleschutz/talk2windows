<#
.SYNOPSIS
	Opens the Shopping List
.DESCRIPTION
	This script launches the Web browser with the Google Shopping List website.
.EXAMPLE
	PS> ./open-shopping-list
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-default-browser.ps1" "https://shoppinglist.google.com"
exit 0 # success
