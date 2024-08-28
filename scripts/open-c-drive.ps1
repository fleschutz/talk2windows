<#
.SYNOPSIS
	Open C: Drive
.DESCRIPTION
	This PowerShell script launches the File Explorer with the C: drive folder.
#>

& "$PSScriptRoot/open-file-explorer.ps1" "C:"
& "$PSScriptRoot/_reply.ps1" "Your C drive."
exit 0 # success
