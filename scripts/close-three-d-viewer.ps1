<#
.SYNOPSIS
	Closes the 3D-Viewer app 
.DESCRIPTION
	This PowerShell script closes the 3D-Viewer application gracefully.
#>

TaskKill /im 3DViewer.exe /f
if ($lastExitCode -ne "0") {
	& "$PSScriptRoot/say.ps1" "Sorry, 3D Viewer isn't running."
}
