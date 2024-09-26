<#
.SYNOPSIS
	Opens Google Shopping List
.DESCRIPTION
	This PowerShell script launches the Web browser with the Google Shopping List website.
#>

& "$PSScriptRoot/say.ps1" "Okay."
& "$PSScriptRoot/open-browser.ps1" "https://shoppinglist.google.com"
