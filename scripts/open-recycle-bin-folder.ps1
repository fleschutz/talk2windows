<#
.SYNOPSIS
	Opens the recycle bin folder
.DESCRIPTION
	This PowerShell script launches the File Explorer with the user's recycle bin folder.
#>

start shell:recyclebinfolder
& "$PSScriptRoot/say.ps1" "Your recycle bin."
