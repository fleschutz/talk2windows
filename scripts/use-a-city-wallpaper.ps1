<#
.SYNOPSIS
	Uses a city wallpaper
.DESCRIPTION
	This script downloads a random city photo and sets it as desktop background.
.EXAMPLE
	PS> ./use-a-city-wallpaper
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/use-a-random-wallpaper.ps1" -Category "city"
exit 0 # success
