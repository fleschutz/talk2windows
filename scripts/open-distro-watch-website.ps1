<#
.SYNOPSIS
	Opens DistroWatch
.DESCRIPTION
	This PowerShell script launches the Web browser with the DistroWatch website.
.EXAMPLE
	PS> ./open-distro-watch-website
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_reply.ps1" "Okay."
& "$PSScriptRoot/open-browser.ps1" "https://distrowatch.com/"
exit 0 # success
