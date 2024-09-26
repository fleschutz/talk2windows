<#
.SYNOPSIS
	Opens Windows Update
.DESCRIPTION
	This PowerShell script launches the update settings of Windows.
#>

& "$PSScriptRoot/say.ps1" "Hold on."
Start-Process ms-settings:windowsupdate
