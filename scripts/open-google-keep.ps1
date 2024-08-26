<#
.SYNOPSIS
	Opens Google Keep
.DESCRIPTION
	This PowerShell script launches the Web browser with Google Keep.
#>

& "$PSScriptRoot/open-browser.ps1" "https://keep.google.com/"
& "$PSScriptRoot/_reply.ps1" "Google Keep."
exit 0
