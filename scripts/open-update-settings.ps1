<#
.SYNOPSIS
	Opens the update settings
.DESCRIPTION
	This PowerShell script launches the update settings of Windows.
#>

Start-Process ms-settings:windowsupdate
& "$PSScriptRoot/say.ps1" "Your update settings."
