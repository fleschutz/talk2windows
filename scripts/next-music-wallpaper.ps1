<#
.SYNOPSIS
	Sets a music wallpaper
.DESCRIPTION
	This PowerShell script downloads a random music photo and sets it as desktop background.
.EXAMPLE
	PS> ./next-music-wallpaper
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/next-random-wallpaper.ps1" -Category "Music"
exit 0 # success
