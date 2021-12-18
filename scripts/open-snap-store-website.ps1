<#
.SYNOPSIS
	Opens the Snap Store website
.DESCRIPTION
	This PowerShell script launches the Web browser with the Snap Store website.
.EXAMPLE
	PS> ./open-snap-store-website
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://snapcraft.io/store"
exit 0 # success
