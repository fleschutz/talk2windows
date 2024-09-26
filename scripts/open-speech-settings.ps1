<#
.SYNOPSIS
	Opens the speech settings of Windows
.DESCRIPTION
	This PowerShell script launches the speech settings of Windows.
#>

Start-Process ms-settings:speech
& "$PSScriptRoot/say.ps1" "Your speech settings."
