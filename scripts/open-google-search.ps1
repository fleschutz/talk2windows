<#
.SYNOPSIS
	Opens Google Search
.DESCRIPTION
	This PowerShell script launches the Web browser with the Google Search website.
.EXAMPLE
	PS> ./open-google-search
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

param([string]$Text = "")

if ("$Text" -eq "") {
	& "$PSScriptRoot/_reply.ps1" "Okay."
	& "$PSScriptRoot/open-browser.ps1" "https://google.com/search"
} else {
	& "$PSScriptRoot/_reply.ps1" "Let's Google it."
	& "$PSScriptRoot/open-browser.ps1" "https://google.com/search?q=$Text"
}
exit 0 # success
