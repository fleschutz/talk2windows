<#
.SYNOPSIS
	Uses a space wallpaper
.DESCRIPTION
	This script downloads a random space photo and sets it as desktop background.
.EXAMPLE
	PS> ./use-a-space-wallpaper
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/use-a-random-wallpaper.ps1" -Category "space"
exit 0 # success
