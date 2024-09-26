<#
.SYNOPSIS
	Opens Google Search
.DESCRIPTION
	This PowerShell script launches the Web browser with the Google Search website.
#>

param([string]$Text = "")

if ("$Text" -eq "") {
	& "$PSScriptRoot/say.ps1" "Okay."
	& "$PSScriptRoot/open-browser.ps1" "https://google.com/search"
} else {
	& "$PSScriptRoot/say.ps1" "Let's Google it."
	& "$PSScriptRoot/open-browser.ps1" "https://google.com/search?q=$Text"
}
exit 0 # success
