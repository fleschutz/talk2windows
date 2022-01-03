<#
.SYNOPSIS
	Sets a beach wallpaper
.DESCRIPTION
	This PowerShell script downloads a random beach photo and sets it as desktop background.
.EXAMPLE
	PS> ./next-beach-wallpaper
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/next-random-wallpaper.ps1" -Category "Beach"
exit 0 # success
