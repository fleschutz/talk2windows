<#
.SYNOPSIS
	Opens Journyx
.DESCRIPTION
	This PowerShell script launches the Web browser with Journyx.
.EXAMPLE
	PS> ./open-journyx
.LINK
	https://github.com/fleschutz/talk2windows
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

& "$PSScriptRoot/_reply" "Just a moment."
& "$PSScriptRoot/open-browser.ps1" "https://ufainc.apps.journyx.com/"
exit 0 # success
