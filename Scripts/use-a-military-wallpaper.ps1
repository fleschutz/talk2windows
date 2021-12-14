<#
.SYNOPSIS
	Uses a military wallpaper
.DESCRIPTION
	This script downloads a random military photo and sets it as desktop background.
.EXAMPLE
	PS> ./use-a-military-wallpaper
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/use-a-random-wallpaper.ps1" -Category "military"
exit 0 # success
