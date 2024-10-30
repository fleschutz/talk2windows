<#
.SYNOPSIS
	Opens the Amazon website
.DESCRIPTION
	This PowerShell script launches the Web browser with the Amazon website.
#>

& "$PSScriptRoot/say.ps1" "Okay."
& "$PSScriptRoot/open-browser.ps1" "https://www.amazon.com"
