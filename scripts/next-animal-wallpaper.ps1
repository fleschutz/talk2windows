<#
.SYNOPSIS
	Sets an animal wallpaper
.DESCRIPTION
	This PowerShell script downloads a random animal photo and sets it as desktop background.
.EXAMPLE
	PS> ./next-animal-wallpaper
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/next-random-wallpaper.ps1" -Category "animal"
exit 0 # success
