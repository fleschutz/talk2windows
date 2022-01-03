<#
.SYNOPSIS
	Sets a fantasy wallpaper
.DESCRIPTION
	This PowerShell script downloads a random sports photo and sets it as desktop background.
.EXAMPLE
	PS> ./next-fantasy-wallpaper
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/next-random-wallpaper.ps1" -Category "Fantasy"
exit 0 # success
