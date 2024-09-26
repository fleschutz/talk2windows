<#
.SYNOPSIS
	Opens Toggl Track
.DESCRIPTION
	This PowerShell script launches the Web browser with the Toggl Track website.
#>

& "$PSScriptRoot/say.ps1" "Hold on."
& "$PSScriptRoot/open-browser.ps1" "https://track.toggl.com"
