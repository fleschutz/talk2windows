<#
.SYNOPSIS
	Opens the Applications folder
.DESCRIPTION
	This PowerShell script launches the File Explorer showing the UWP applications folder.
#>

& "$PSScriptRoot/open-file-explorer.ps1" "shell:AppsFolder"
& "$PSScriptRoot/_reply.ps1" "Your applications."
exit 0 # success

