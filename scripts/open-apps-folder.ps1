<#
.SYNOPSIS
	Opens the Apps folder
.DESCRIPTION
	This PowerShell script launches the File Explorer showing the UWP apps folder.
#>

& "$PSScriptRoot/open-file-explorer.ps1" "shell:AppsFolder"
& "$PSScriptRoot/say.ps1" "Your apps."

