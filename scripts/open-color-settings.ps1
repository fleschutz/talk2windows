<#
.SYNOPSIS
	Opens the color settings of Windows
.DESCRIPTION
	This PowerShell script launches the color settings of Windows.
#>

& "$PSScriptRoot/say.ps1" "Colors..."
Start-Process ms-settings:colors
