<#
.SYNOPSIS
	Uses a beach wallpaper
.DESCRIPTION
	This script downloads a random beach photo and sets it as desktop background.
.EXAMPLE
	PS> ./use-a-beach-wallpaper
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/use-a-random-wallpaper.ps1" -Category "beach"
exit 0 # success
