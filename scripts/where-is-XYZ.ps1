<#
.SYNOPSIS
	Shows a location
.DESCRIPTION
	This PowerShell script launches the Web browser with Google Maps at the given location.
#>

param([string]$Location = "")
& "$PSScriptRoot/open-browser.ps1" "https://www.google.com/maps/place/$Location"
& "$PSScriptRoot/say.ps1" "It's here."
