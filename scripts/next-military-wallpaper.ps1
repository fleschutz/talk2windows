<#
.SYNOPSIS
	Sets a military wallpaper
.DESCRIPTION
	This script downloads a random military photo and sets it as desktop background.
.EXAMPLE
	PS> ./next-military-wallpaper
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/next-random-wallpaper.ps1" -Category "military"
exit 0 # success
