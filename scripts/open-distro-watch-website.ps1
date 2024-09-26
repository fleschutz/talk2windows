<#
.SYNOPSIS
	Opens DistroWatch
.DESCRIPTION
	This PowerShell script launches the Web browser with the DistroWatch website.
#>

& "$PSScriptRoot/say.ps1" "Okay."
& "$PSScriptRoot/open-browser.ps1" "https://distrowatch.com/"
