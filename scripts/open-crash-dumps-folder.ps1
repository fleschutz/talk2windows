<#
.SYNOPSIS
	Opens the crash dumps folder
.DESCRIPTION
	This PowerShell script launches the File Explorer with the crash dumps folder.
#>

try {
	$path = Resolve-Path "~\AppData\Local\CrashDumps"
	& "$PSScriptRoot/open-file-explorer.ps1" "$path"
	$reply = "Your crash dumps."
} catch { $reply = "Sorry: $($Error[0])" }
& "$PSScriptRoot/say.ps1" $reply

