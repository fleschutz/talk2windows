﻿<#
.SYNOPSIS
	Opens Google Blogger
.DESCRIPTION
	This script launches the Web browser with the Google Books website.
.EXAMPLE
	PS> ./open-google-blogger
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-default-browser.ps1" "https://www.blogger.com"
exit 0 # success