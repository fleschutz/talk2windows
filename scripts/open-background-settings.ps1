<#
.SYNOPSIS
	Open the background settings
.DESCRIPTION
	This PowerShell script launches the background settings of Windows.
#>

Start-Process ms-settings:personalization-background
& "$PSScriptRoot/say.ps1" "Your background settings."
