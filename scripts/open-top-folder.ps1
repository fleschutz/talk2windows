<#
.SYNOPSIS
	Opens the top folder
.DESCRIPTION
	This PowerShell script launches the File Explorer with the top folder ('This PC').
#>

explorer file:\\
& "$PSScriptRoot/say.ps1" "This PC."
