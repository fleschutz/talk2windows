<#
.SYNOPSIS
	Shows the OBS Studio manual
.DESCRIPTION
	This PowerShell script launches the Web browser with the OBS Studio manual.
.EXAMPLE
	PS> ./show-obs-studio-manual
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://obsproject.com/wiki/"
exit 0 # success
