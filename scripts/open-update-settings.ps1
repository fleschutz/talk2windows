<#
.SYNOPSIS
	Opens Windows Update
.DESCRIPTION
	This PowerShell script launches the update settings of Windows.
#>

& "$PSScriptRoot/_reply.ps1" "Hold on."
Start-Process ms-settings:windowsupdate
exit 0
