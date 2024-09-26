<#
.SYNOPSIS
	Opens the Serenade website
.DESCRIPTION
	This PowerShell script launches the Web browser with the Serenade.ai website.
#>

& "$PSScriptRoot/say.ps1" "Okay."
& "$PSScriptRoot/open-browser.ps1" "https://serenade.ai/"
