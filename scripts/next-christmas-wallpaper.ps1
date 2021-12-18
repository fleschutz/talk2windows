<#
.SYNOPSIS
	Sets a christmas wallpaper
.DESCRIPTION
	This PowerShell script downloads a random christmas photo and sets it as desktop background.
.EXAMPLE
	PS> ./next-christmas-wallpaper
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/next-random-wallpaper.ps1" -Category "christmas"
exit 0 # success
