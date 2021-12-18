<#
.SYNOPSIS
	Opens the WolframAlpha website
.DESCRIPTION
	This PowerShell script launches the Web browser with the WolframAlpha website.
.EXAMPLE
	PS> ./open-wolfram-alpha-website
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://www.wolframalpha.com"
exit 0 # success
