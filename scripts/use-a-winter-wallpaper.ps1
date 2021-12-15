<#
.SYNOPSIS
	Uses a winter wallpaper
.DESCRIPTION
	This script downloads a random winter photo and sets it as desktop background.
.EXAMPLE
	PS> ./use-a-winter-wallpaper
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/use-a-random-wallpaper.ps1" -Category "winter"
exit 0 # success
