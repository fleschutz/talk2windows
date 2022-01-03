<#
.SYNOPSIS
	Sets a nature wallpaper
.DESCRIPTION
	This PowerShell script downloads a random nature photo and sets it as desktop background.
.EXAMPLE
	PS> ./next-nature-wallpaper
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/next-random-wallpaper.ps1" -Category "Nature"
exit 0 # success
