<#
.SYNOPSIS
	Opens the display settings of Windows
.DESCRIPTION
	This PowerShell script launches the display settings of Windows.
#>

& "$PSScriptRoot/say.ps1" "Display..."
Start-Process ms-settings:display
