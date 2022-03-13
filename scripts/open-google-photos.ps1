<#
.SYNOPSIS
	Opens Google Photos
.DESCRIPTION
	This PowerShell script launches the Web browser with Google Photos.
.EXAMPLE
	PS> ./open-google-photos
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_reply.ps1" "Photos..."
& "$PSScriptRoot/open-browser.ps1" "https://photos.google.com"
exit 0 # success
