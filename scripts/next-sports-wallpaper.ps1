<#
.SYNOPSIS
	Sets a sports wallpaper
.DESCRIPTION
	This PowerShell script downloads a random sports photo and sets it as desktop background.
.EXAMPLE
	PS> ./next-sports-wallpaper
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/next-random-wallpaper.ps1" -Category "Sports"
exit 0 # success
