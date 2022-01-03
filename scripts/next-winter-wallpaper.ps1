<#
.SYNOPSIS
	Sets a winter wallpaper
.DESCRIPTION
	This PowerShell script downloads a random winter photo and sets it as desktop background.
.EXAMPLE
	PS> ./next-winter-wallpaper
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/next-random-wallpaper.ps1" -Category "Winter"
exit 0 # success
