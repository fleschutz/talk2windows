<#
.SYNOPSIS
	Opens the taskbar settings of Windows
.DESCRIPTION
	This PowerShell script launches the taskbar settings of Windows.
#>

Start-Process ms-settings:taskbar
& "$PSScriptRoot/say.ps1" "Your task bar settings."
