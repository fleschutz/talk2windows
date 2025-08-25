<#
.SYNOPSIS
	Closes WhatsApp
.DESCRIPTION
	This PowerShell script closes WhatsApp gracefully.
#>

& "$PSScriptRoot/say.ps1" "Okay."
& "$PSScriptRoot/close-program.ps1" "WhatsApp" "WhatsApp" "WhatsApp"
