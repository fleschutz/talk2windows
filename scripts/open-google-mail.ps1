<#
.SYNOPSIS
	Opens Google Mail
.DESCRIPTION
	This PowerShell script launches the Web browser with Google Mail.
#>

& "$PSScriptRoot/_reply.ps1" "Hold on..."
& "$PSScriptRoot/open-browser.ps1" "https://mail.google.com"
exit 0 # success
