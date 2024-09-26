<#
.SYNOPSIS
	Closes 7-Zip
.DESCRIPTION
	This PowerShell script closes the 7-Zip application gracefully.
#>

TaskKill /im 7zFM.exe /f
& "$PSScriptRoot/say.ps1" "Closed."
exit 0 # success
