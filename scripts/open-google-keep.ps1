<#
.SYNOPSIS
	Opens Google Keep
.DESCRIPTION
	This PowerShell script launches the Web browser with Google Keep.
#>

& "$PSScriptRoot/say.ps1" "Okay."
& "$PSScriptRoot/open-browser.ps1" "https://keep.google.com/"
