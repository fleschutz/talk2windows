﻿<#
.SYNOPSIS
	Shows Barcelona city in Google Maps 
.DESCRIPTION
	This script launches the Web browser with Google Maps at Barcelona city (Spain).
.EXAMPLE
	PS> ./show-barcelona-city
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/PowerShell
#>

& "$PSScriptRoot/open-default-browser.ps1" "https://www.google.com/maps/place/Barcelona"
exit 0 # success