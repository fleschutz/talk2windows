﻿<#
.SYNOPSIS
	Uses a nature wallpaper
.DESCRIPTION
	This script downloads a random nature photo and sets it as desktop background.
.EXAMPLE
	PS> ./use-a-nature-wallpaper
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/use-a-random-wallpaper.ps1" -Category "nature"
exit 0 # success