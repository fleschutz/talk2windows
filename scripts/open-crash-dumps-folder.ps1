<#
.SYNOPSIS
	Opens the crash dumps folder
.DESCRIPTION
	This PowerShell script launches the File Explorer with the crash dumps folder.
#>

[string]$path = Resolve-Path -Path "~\AppData\Local\CrashDumps"
& "$PSScriptRoot/open-file-explorer.ps1" $path
exit 0 # success

