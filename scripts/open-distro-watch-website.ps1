<#
.SYNOPSIS
	Opens the DistroWatch website
.DESCRIPTION
	This script launches the Web browser with the DistroWatch website.
.EXAMPLE
	PS> ./open-distro-watch-website
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_launch-browser.ps1" "https://distrowatch.com/"
exit 0 # success
