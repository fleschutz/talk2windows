<#
.SYNOPSIS
	Opens Google Notes
.DESCRIPTION
	This PowerShell script launches the Web browser with Google Notes.
.EXAMPLE
	PS> ./open-google-notes
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_reply.ps1" "Notes..."
& "$PSScriptRoot/open-browser.ps1" "https://keep.google.com/"
exit 0 # success
