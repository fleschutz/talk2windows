<#
.SYNOPSIS
	Open the personal settings
.DESCRIPTION
	This PowerShell script launches the personal settings of Windows.
#>

Start-Process ms-settings:personalization-background
& "$PSScriptRoot/say.ps1" "Your settings."
