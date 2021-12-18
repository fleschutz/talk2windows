<#
.SYNOPSIS
	Sets a sport wallpaper
.DESCRIPTION
	This PowerShell script downloads a random sport photo and sets it as desktop background.
.EXAMPLE
	PS> ./next-sport-wallpaper
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/next-random-wallpaper.ps1" -Category "sport"
exit 0 # success
