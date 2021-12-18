<#
.SYNOPSIS
	Sets a movie wallpaper
.DESCRIPTION
	This PowerShell script downloads a random movie photo and sets it as desktop background.
.EXAMPLE
	PS> ./next-movie-wallpaper
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/next-random-wallpaper.ps1" -Category "Movie"
exit 0 # success
