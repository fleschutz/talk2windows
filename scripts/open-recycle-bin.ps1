<#
.SYNOPSIS
	Opens the recycle bin folder
.DESCRIPTION
	This PowerShell script launches the File Explorer with the user's recycle bin folder.
#>

start shell:recyclebinfolder
& "$PSScriptRoot/_reply.ps1" "Your recycle bin."
exit 0 # success
