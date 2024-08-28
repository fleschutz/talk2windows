<#
.SYNOPSIS
	Opens the Apps folder
.DESCRIPTION
	This PowerShell script launches the File Explorer showing the UWP apps folder.
#>

& "$PSScriptRoot/open-file-explorer.ps1" "shell:AppsFolder"
& "$PSScriptRoot/_reply.ps1" "Your apps."
exit 0 # success

