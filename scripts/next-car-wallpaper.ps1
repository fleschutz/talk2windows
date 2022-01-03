<#
.SYNOPSIS
	Sets a car wallpaper
.DESCRIPTION
	This PowerShell script downloads a random car photo and sets it as desktop background.
.EXAMPLE
	PS> ./next-car-wallpaper
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/next-random-wallpaper.ps1" -Category "Car"
exit 0 # success
