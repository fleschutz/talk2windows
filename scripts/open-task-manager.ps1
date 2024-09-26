<#
.SYNOPSIS
	Starts the Task Manager
.DESCRIPTION
	This PowerShell script launches the Windows Task Manager application.
#>

& "$PSScriptRoot/say.ps1" "Hold on."
Start-Process taskmgr.exe
