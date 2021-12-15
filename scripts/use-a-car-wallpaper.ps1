<#
.SYNOPSIS
	Uses a car wallpaper
.DESCRIPTION
	This script downloads a random car photo and sets it as desktop background.
.EXAMPLE
	PS> ./use-a-car-wallpaper
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/use-a-random-wallpaper.ps1" -Category "car"
exit 0 # success
