<#
.SYNOPSIS
	Closes the 3D-Viewer app 
.DESCRIPTION
	This PowerShell script closes the 3D-Viewer application gracefully.
.EXAMPLE
	PS> ./close-three-d-viewer
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

TaskKill /im 3DViewer.exe /f
if ($lastExitCode -ne "0") {
	& "$PSScriptRoot/give-reply.ps1" "Sorry, 3D Viewer isn't running."
	exit 1
}
exit 0 # success
