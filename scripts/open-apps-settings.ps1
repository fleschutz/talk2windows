<#
.SYNOPSIS
	Opens the Apps settings of Windows
.DESCRIPTION
	This PowerShell script launches the apps settings of Windows.
#>

Start-Process ms-settings:appsfeatures
& "$PSScriptRoot/_reply.ps1" "Your apps and features."
exit 0 # success
