<#
.SYNOPSIS
	Opens Windows Terminal
.DESCRIPTION
	This PowerShell script launches the Windows Terminal application.
#>

param([string]$cmd = "")

Start-Process -filePath wt.exe -argumentList $cmd
if ($cmd -eq "") { & "$PSScriptRoot/say.ps1" "Your terminal." }
exit 0 # success
