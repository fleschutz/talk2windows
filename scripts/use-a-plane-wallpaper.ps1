<#
.SYNOPSIS
	Uses a plane wallpaper
.DESCRIPTION
	This script downloads a random plane photo and sets it as desktop background.
.EXAMPLE
	PS> ./use-a-plane-wallpaper
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/use-a-random-wallpaper.ps1" -Category "plane"
exit 0 # success
