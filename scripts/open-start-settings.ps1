<#
.SYNOPSIS
	Opens the start settings of Windows
.DESCRIPTION
	This PowerShell script launches the start settings of Windows.
#>

Start-Process ms-settings:personalization-start
& "$PSScriptRoot/say.ps1" "Your start settings."
