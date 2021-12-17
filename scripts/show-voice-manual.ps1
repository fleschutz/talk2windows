<#
.SYNOPSIS
	Shows the voice manual
.DESCRIPTION
	This script launches the Web browser with the voice control manual.
.EXAMPLE
	PS> ./show-voice-manual
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_launch-browser.ps1" "https://github.com/fleschutz/talk2windows"
exit 0 # success
