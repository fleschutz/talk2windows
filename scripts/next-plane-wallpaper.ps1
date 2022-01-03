<#
.SYNOPSIS
	Sets a plane wallpaper
.DESCRIPTION
	This PowerShell script downloads a random plane photo and sets it as desktop background.
.EXAMPLE
	PS> ./next-plane-wallpaper
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/next-random-wallpaper.ps1" -Category "Plane"
exit 0 # success
