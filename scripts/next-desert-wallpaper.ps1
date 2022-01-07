<#
.SYNOPSIS
	Sets a desert wallpaper
.DESCRIPTION
	This PowerShell script downloads a random desert photo and sets it as desktop background.
.EXAMPLE
	PS> ./next-desert-wallpaper
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/next-random-wallpaper.ps1" -Category "Desert"
exit 0 # success
