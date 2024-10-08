<#
.SYNOPSIS
	Opens the crash dumps folder
.DESCRIPTION
	This PowerShell script launches the File Explorer with the crash dumps folder.
#>

$path = Resolve-Path "~\AppData\Local\CrashDumps"
& "$PSScriptRoot/open-file-explorer.ps1" "$path"
& "$PSScriptRoot/say.ps1" "Your crash dumps."

