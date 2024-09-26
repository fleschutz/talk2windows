<#
.SYNOPSIS
	Open the HRworks Web service
.DESCRIPTION
	This PowerShell script launches the Web browser with the HRworks Web service.
#>

& "$PSScriptRoot/say.ps1" "Okay."
& "$PSScriptRoot/open-browser.ps1" "https://login.hrworks.de/"
